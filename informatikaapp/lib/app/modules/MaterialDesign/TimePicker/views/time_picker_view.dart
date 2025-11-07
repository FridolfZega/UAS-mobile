import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/time_picker_controller.dart';

class TimePickerView extends GetView<TimePickerController> {
  const TimePickerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePickerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TimePickerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
