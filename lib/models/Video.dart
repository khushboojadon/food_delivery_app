import 'package:food_delivery_app/models/Embed.dart';
import 'package:food_delivery_app/models/Pictures.dart';

class Video {
  String name;
  String description;
  Pictures pictures;
  String uri;
 Embed embed;
  Video(
    this.name,
    this.description,
    this.pictures,
    this.uri,
  );
  Video.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    name = json['name'];
    description = json['description'];
    pictures =
        json['pictures'] != null ? new Pictures.fromJson(json['pictures']) : null;
        embed =
        json['embed'] != null ? new Embed.fromJson(json['embed']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['name'] = this.name;
    data['description'] = this.description;
  if (this.pictures != null) {
      data['pictures'] = this.pictures.toJson();
    }
    if (this.embed != null) {
      data['embed'] = this.embed.toJson();
    }
    return data;
  }
}
