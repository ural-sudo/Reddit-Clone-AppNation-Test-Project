import 'children_model.dart';

class Data {
  String? after;
  int? dist;
  String? modhash;
  String? geoFilter;
  List<Children>? children;
  String? before;

  Data(
      {this.after,
      this.dist,
      this.modhash,
      this.geoFilter,
      this.children,
      this.before});

  Data.fromJson(Map<String, dynamic> json) {
    after = json['after'] ?? "";
    dist = json['dist'];
    modhash = json['modhash'];
    geoFilter = json['geo_filter'];
    if (json['children'] != null) {
      children = <Children>[];
      json['children'].forEach((v) {
        children!.add( Children.fromJson(v));
      });
    }
    before = json['before'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['after'] = this.after;
    data['dist'] = this.dist;
    data['modhash'] = this.modhash;
    data['geo_filter'] = this.geoFilter;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    data['before'] = this.before;
    return data;
  }
}