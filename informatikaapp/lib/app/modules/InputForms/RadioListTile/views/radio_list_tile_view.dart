import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/radio_list_tile_controller.dart';

class RadioListTileView extends GetView<RadioListTileController> {
  const RadioListTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RadioListTileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
