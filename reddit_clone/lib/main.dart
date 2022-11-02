import 'package:flutter/material.dart';
import 'package:reddit_clone/view/homepage/view/homepage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF101010),          
        )
      ),
      home:const HomePage(),/* RepositoryProvider(create: (context) {
        return RedditService();
      },
      child: const HomePage(),
      ), */
      
    );
  }
}

