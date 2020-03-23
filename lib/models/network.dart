import 'dart:convert';
import 'dart:io';
import 'package:food_delivery_app/models/Folders.dart';
import 'package:food_delivery_app/models/Videos.dart';
import 'package:http/http.dart' as http;

class Network {
  // var token = 'Bearer e9ee97f4a5e9c14c4012b168120f675a';
//   var token = 'Bearer 02824d78b02704fe55bf12177a40bbee';
//   String url = 'https://api.vimeo.com/';
//   getdata() async {
//     http.Response response = await http.get(url + 'me/projects',
//         headers: {HttpHeaders.authorizationHeader: token});
//     Map userMap = jsonDecode(response.body);
//     Folders folder = new Folders.fromJSON(userMap);
//   //  print(folder.data[0].toJson());
//     // for (int i=0;i<folder.data.length;i++)
//     // {
//     // Folder fo=folder.data[i];
//     // print(fo.name);
//     // }
//   //  print(folder.data[0].uri);
//     var uri = folder.data[0].uri;
//     print(uri);
//     getvideos(uri);
//   }
//  Future<Videos> getvideos(String uri) async {
//     http.Response response = await http
//         .get(url + uri+'/videos', headers: {HttpHeaders.authorizationHeader: token});
//     // print(response.body);
//     Map videoMap = jsonDecode(response.body);
//     Videos videos = new Videos.fromJson(videoMap);
//    print(videos.data[0].pictures.sizes[0].link);
//    print(videos);
//    return videos;
//   }
}
