import 'package:food_delivery_app/models/Folder.dart';

class Folders
{
  int total;
  int page;
  int perPage;
  List<Folder> data;
  Folders.fromJSON(Map<String, dynamic> jsonMap) {
    total = jsonMap['total'];
    page = jsonMap['page'];
    perPage = jsonMap['per_page'];
    if (jsonMap['data'] != null) {
      
      data = new List<Folder>();
      jsonMap['data'].forEach((v) {
        data.add(new Folder.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }

    
}