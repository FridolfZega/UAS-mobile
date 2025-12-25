import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/material_app_controller.dart';


class MaterialAppView extends GetView<MaterialAppController> {
  const MaterialAppView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MaterialApp Demo'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                'Welcome to MaterialApp!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('This is the root widget of your app'),
            ],
          ),
        ),
      ),
    );
  }
}
