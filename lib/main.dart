import 'package:flutter/material.dart';
import 'package:food_delivery_app/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  primarySwatch: Colors.indigo,
          brightness: Brightness.dark,
          //primaryColor: Color(0xFFC88D67),
        //  primarySwatch: Color(0xFFC88D67)
        ),
      home: SignUp(),
    );
  }
}
