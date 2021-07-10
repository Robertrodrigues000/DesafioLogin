import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 45,
          ),
          Container(
            height: 400,
            child: Image(
              image: AssetImage("images/start.jpg"),
            ),
          ),
          SizedBox(height: 20),
          RichText(
              text: TextSpan(
                  text: 'Welcome to',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                TextSpan(
                    text: 'X Groceries',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange))
              ])),
          SizedBox(height: 10.0),
          Text(
            'Fresh Groceries Delivered at your Doorstep',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            MaterialButton(
              padding: EdgeInsets.only(left: 30, right: 30),
              onPressed: () {},
              child: Text('LOGIN',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(width: 20),
            MaterialButton(
              padding: EdgeInsets.only(left: 30, right: 30),
              onPressed: () {},
              child: Text('REGISTER',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ]),
          SizedBox(height: 20),
          SignInButton(
            Buttons.Google,
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
