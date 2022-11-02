
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reddit_clone/view/homepage/viewModel/bloc/reddit_bloc.dart';
import 'homepage_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RedditBloc>(
      // add işlemiyle uygulama ilk açıldığında service istek atabiliriz.
      create: ((context) => RedditBloc()..add(const FetchReddits())),
      child: const HomePageView(),
      );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  
  Future<void> update() async {
    await context.read<RedditBloc>()..add(FetchReddits());
  }

  @override
  Widget build(BuildContext context) {
    String title = "Reddit Clone";
    String imagePath = "assets/images/appnation.png";
    return NestedScrollView(
      headerSliverBuilder: ((context, innerBoxIsScrolled) {
        return[  SliverAppBar(
          pinned: true,
          
          centerTitle: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(title,style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white)),
            background: Image.asset(imagePath,fit: BoxFit.fill,),
            centerTitle: true,
          ),
        )];
      }),
      body: Scaffold(
      body:BlocBuilder<RedditBloc,RedditState>(builder: (context, state) {
        if(state.status == RedditStatus.inital){
          return const CircularIndicator();
        }else if(state.status == RedditStatus.succsess){
          
          return RefreshIndicator(
            onRefresh:update,
            child: ListView.builder(
              itemCount: state.model.data?.children?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListItem(index: index,state: state,),
                );
              },
              
            ),
          );
        }else{
          return const Center(
            child:Text("There is a problem!!")
          );
        }
      },) ,
    ));
     
  }
}



