import 'package:flutter/material.dart';
import './Swap_Search.dart';
import './Login.dart';



void main() => runApp(HackYo());

class HackYo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwapSearch(),
    );
  }
}