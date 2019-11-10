import 'package:flutter/material.dart';

import './Home_Page.dart';
import './Create_User.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordConrtoller = TextEditingController();

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
                    controller: _emailController,
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
                    controller: _passwordConrtoller,
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
                    width: 50000,
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
                  ),
                  Text('${_emailController.text} ${_passwordConrtoller.text}')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
