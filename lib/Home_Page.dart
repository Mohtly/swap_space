import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                    'SwapSpace',
                    style: TextStyle(color: Colors.orange, fontSize: 25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Container(
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      child: Text('Submit'),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      color: Colors.greenAccent,
                      child: Text('Submit'),
                      onPressed: () {},
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