import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/date_picker_controller.dart';

class DatePickerView extends GetView<DatePickerController> {
  const DatePickerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePickerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DatePickerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
