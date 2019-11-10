import 'package:flutter/material.dart';

import './login.dart';



void main() => runApp(HackYo());

class HackYo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}