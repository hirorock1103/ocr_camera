import 'package:flutter/material.dart';
import 'package:ocr_camera/screens/home_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OCR TEST",
      home : HomeScreen()
    );
  }
}
