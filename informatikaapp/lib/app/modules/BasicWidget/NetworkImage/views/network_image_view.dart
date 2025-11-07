import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/network_image_controller.dart';

class NetworkImageView extends GetView<NetworkImageController> {
  const NetworkImageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NetworkImageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NetworkImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
