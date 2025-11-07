import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/asset_image_controller.dart';

class AssetImageView extends GetView<AssetImageController> {
  const AssetImageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AssetImageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AssetImageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
