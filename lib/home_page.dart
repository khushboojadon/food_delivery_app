import 'package:flutter/material.dart';
import 'package:food_delivery_app/browse.dart';
import 'package:food_delivery_app/downloads.dart';
import 'package:food_delivery_app/home.dart';
import 'package:food_delivery_app/models/network.dart';
import 'package:food_delivery_app/search.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Downloads(),
    Browse(),
    Search(),
    
  ];
  var network=new Network();
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
   // network.getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
       // selectedItemColor: Color(0xFFEF7532),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward), title: Text("Downloads")),
          BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser), title: Text("Browse")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Search")),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
