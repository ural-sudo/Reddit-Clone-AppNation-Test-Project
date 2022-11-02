
import 'data_model.dart';

class RedditModel {
  String? kind;
  Data? data;

  RedditModel({this.kind, this.data});

  RedditModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['kind'] = this.kind;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}