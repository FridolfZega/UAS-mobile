import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/place_holder_controller.dart';

class PlaceHolderView extends GetView<PlaceHolderController> {
  const PlaceHolderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlaceHolderView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PlaceHolderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
