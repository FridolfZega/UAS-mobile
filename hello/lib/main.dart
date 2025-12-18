import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyWidget());
}

//  StatelessWidget
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text", theme: ThemeData(),
       home: Homepage(),
       
       );

  }
}