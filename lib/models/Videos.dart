import 'package:food_delivery_app/models/User.dart';
import 'package:food_delivery_app/models/Video.dart';

class Videos {
  String createdTime;
  String modifiedTime;
  String uri;
  User user;
  List<Video> data;
  Videos.fromJson(Map<String, dynamic> json) {
    createdTime = json['created_time'];
    modifiedTime = json['modified_time'];
    uri = json['uri'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
   if (json['data'] != null) {
      data = new List<Video>();
      json['data'].forEach((v) {
        data.add(new Video.fromJson(v));
      });
    }
  }
    Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdTime'] = this.createdTime;
    data['modifiedTime']=this.modifiedTime;
    data['uri']=this.uri;
    data['user']=this.user;
    data['data']=this.data;
    return data;
}
}


