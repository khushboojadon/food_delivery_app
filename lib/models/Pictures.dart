import 'package:food_delivery_app/models/Sizes.dart';

class Pictures {
  String uri;
  bool active;
  String type;
  String resourceKey;
  List<Sizes> sizes;

  Pictures.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    active = json['active'];
    type = json['type'];
    resourceKey = json['resource_key'];
    if (json['sizes'] != null) {
      sizes = new List<Sizes>();
      json['sizes'].forEach((v) {
        sizes.add(new Sizes.fromJson(v));
      });
    }
  }
   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['active'] = this.active;
    data['type'] = this.type;
    if (this.sizes != null) {
      data['sizes'] = this.sizes.map((v) => v.toJson()).toList();
    }
    data['resource_key'] = this.resourceKey;
    return data;
  }

}