import 'package:flutter/material.dart';
import 'package:food_delivery_app/home_page.dart';
import 'package:food_delivery_app/models/network.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var network = new Network();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign up",
              style: TextStyle(
                  color: Color(0xFFC88D67),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 25.0),
            //Name textfield
            TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              cursorColor: Color(0xFFC88D67),
            ),
            SizedBox(height: 15.0),

            // Email textfield
            TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              cursorColor: Color(0xFFC88D67),
            ),
            SizedBox(height: 15.0),
            TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              cursorColor: Color(0xFFC88D67),
            ),
            SizedBox(height: 15.0),
            TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm password",
                labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              cursorColor: Color(0xFFC88D67),
            ),
            SizedBox(height: 55.0),
            //Signup button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Center(
                      child: GestureDetector(
                    child: Container(
                        height: 50.0,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xFFF17532)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ))),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                        child: GestureDetector(
                      child: Container(
                          height: 50.0,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFFF17532)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))),
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
