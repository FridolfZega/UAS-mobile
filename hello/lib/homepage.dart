import 'package:flutter/material.dart';

// page home
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Aplikasi A"),
    ),
    body: Center(
      child: Text("Home Page"),
    ),

    );
  }
}