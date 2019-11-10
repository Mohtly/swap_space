import 'package:flutter/material.dart';

import './Create_User.dart';
import './Home_Page.dart';

void main() => runApp(HackYo());

class HackYo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        color: Colors.white,
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Welcome to SwapSpace',
                    style: TextStyle(color: Colors.orange, fontSize: 25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  FlatButton(
                    textColor: Colors.orange,
                    child: Text('Create an account'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ),
                      );
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Container(
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      child: Text('Submit'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
