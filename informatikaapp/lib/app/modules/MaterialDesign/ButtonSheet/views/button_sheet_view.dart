import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/button_sheet_controller.dart';

class ButtonSheetView extends GetView<ButtonSheetController> {
  const ButtonSheetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonSheetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ButtonSheetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
