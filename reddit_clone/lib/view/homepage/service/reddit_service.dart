

import 'dart:io';
import 'package:dio/dio.dart';
import '../model/reddit_model.dart';

class RedditService {

  final Dio manager  = Dio(BaseOptions(baseUrl: "https://www.reddit.com/"));

  
  Future<RedditModel> get() async {
    try{
      final response = await manager.get("r/flutterdev/top.json?count=20");
      if(response.statusCode == HttpStatus.ok){
        final comingData = await response.data;
        if(comingData is Map<String,dynamic>){
          return RedditModel.fromJson(comingData);
        }
      }
    }catch(_){
    }
    return RedditModel();
    
  }


}

