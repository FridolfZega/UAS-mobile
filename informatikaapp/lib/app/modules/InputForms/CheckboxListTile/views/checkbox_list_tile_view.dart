import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checkbox_list_tile_controller.dart';

class CheckboxListTileView extends GetView<CheckboxListTileController> {
  const CheckboxListTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CheckboxListTileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
