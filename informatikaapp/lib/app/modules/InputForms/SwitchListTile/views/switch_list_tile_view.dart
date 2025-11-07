import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/switch_list_tile_controller.dart';

class SwitchListTileView extends GetView<SwitchListTileController> {
  const SwitchListTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SwitchListTileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
