import 'dart:convert';
import 'dart:io';
import 'package:food_delivery_app/models/Video.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Authorization token
  var token = 'Bearer 02824d78b02704fe55bf12177a40bbee';
  //basic url
  String url = 'https://api.vimeo.com/';
  List<Video> lsvideo;

  // getting list of all videos in application
  Future<List<Video>> getdata() async {
    http.Response response = await http.get(url + 'me/videos',
        headers: {HttpHeaders.authorizationHeader: token});
    Map userMap = jsonDecode(response.body);
    List<Video> data = new List<Video>();
    userMap['data'].forEach((v) {
      data.add(new Video.fromJson(v));
    });
    lsvideo = data;
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            color: Color(0xFFC88D67),
          ),
        ),
        actions: <Widget>[
          Icon(Icons.people),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 10.0),
            child: Icon(Icons.dashboard),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // title of list of videos
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Continue Learning',
                      style: TextStyle(
                      //    color: Color(0xFFC88D67),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              // list of videos
              Container(
                height: 200.0,
                child: FutureBuilder(
                  future: getdata(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                      return Container(
                          child: Center(child: Text("loading....")));
                    } else {
                      return Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return Details(
                                      lsvideo: snapshot.data[index],
                                    );
                                  }),
                                );
                              },
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Image.network(
                                      snapshot
                                          .data[index].pictures.sizes[9].link,
                                      width: 200,
                                      height: 160,
                                    ),
                                  ),
                                  Text(snapshot.data[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    snapshot.data[index].description,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
