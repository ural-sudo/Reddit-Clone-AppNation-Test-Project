import 'package:flutter/material.dart';

import '../viewModel/bloc/reddit_bloc.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key, required this.state, required this.index,
  }) : super(key: key);

  final RedditState state;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFEBEBEB),
      child: Column(
        
        children: [
          Padding(
            padding: ProjectPaddings.verticalPadding,
            child: TitleText(state: state,index: index,),
          ),
          Padding(
            padding: ProjectPaddings.allPadding,
            child: SelfText(state: state,index: index,),
          ),
          Padding(
            padding: ProjectPaddings.verticalPadding,
            child: ThumbnailImage(state: state,index: index,),
          )
        ],
      ),
    );
  }
}

class ThumbnailImage extends StatelessWidget {
  const ThumbnailImage({
    Key? key, required this.state, required this.index,
  }) : super(key: key);
  final RedditState state;
  final int index; 
  @override
  Widget build(BuildContext context) {
    final String thumbnailPath = state.model.data?.children?[index].childData?.thumbnail ?? "";
    return thumbnailPath == "self" ? const CustomPlaceHolder() : SizedBox(height: 200,child: Image.network(thumbnailPath,fit: BoxFit.cover,));
  }
}

class CustomPlaceHolder extends StatelessWidget {
  const CustomPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      child: Stack(
        children: [
           const Placeholder(),
           Positioned(
            top: 40,
            left: 100,
            child: Text("Photo not found",style: Theme.of(context).textTheme.headline6,)
          )
        ],
      ),
    );
  }
}

class ProjectPaddings {
  static const verticalPadding =  EdgeInsets.symmetric(vertical: 10);
  static const allPadding =   EdgeInsets.all(8.0);
}

class SelfText extends StatelessWidget {
  const SelfText({
    Key? key, required this.state, required this.index,
  }) : super(key: key);

  final RedditState state;
  final int index;
  @override
  Widget build(BuildContext context) {
    String notFound = "Text not found";
    String selfText = state.model.data?.children?[index].childData?.selftext ?? "";
    if(selfText == ""){
      selfText = notFound;
    }
    return Text(selfText,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.blue),);
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key, required this.state, required this.index,
  }) : super(key: key);
  final RedditState state;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text("${state.model.data?.children?[index].childData?.title}",style: Theme.of(context).textTheme.headline6,textAlign: TextAlign.center,);
  }
}
class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child:  CircularProgressIndicator(strokeWidth: 5,color: Colors.black,),);
  }
}