import 'package:flutter/material.dart';
import './Login.dart';
import './Take_Picture_Screen.dart';
import 'package:camera/camera.dart';
import 'dart:async';


Future<void> main() async {
  final cameras = await availableCameras();
  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  return runApp(
    MaterialApp(
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Login(),
//     );
//   }
// }