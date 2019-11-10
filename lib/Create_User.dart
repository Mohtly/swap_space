import 'package:flutter/material.dart';

import './Home_Page.dart';

class CreateAccount extends StatelessWidget {
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
                    'Create Account',
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
                      labelText: "Enter UserName",
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
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Re Enter Password",
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Container(
                    width: 500,
                    child: RaisedButton(
                      color: Colors.orange,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text('Submit'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}