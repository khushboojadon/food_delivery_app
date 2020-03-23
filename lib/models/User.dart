import 'package:food_delivery_app/models/Pictures.dart';

class User{
 String uri;
  String name;
  String link;
  Pictures pictures;
   User.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    name = json['name'];
    link = json['link'];
    pictures =
        json['pictures'] != null ? new Pictures.fromJson(json['pictures']) : null;
  }
}