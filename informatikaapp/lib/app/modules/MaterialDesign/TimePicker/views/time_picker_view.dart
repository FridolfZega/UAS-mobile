import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/time_picker_controller.dart';
import 'SampleTimePicker.dart';


class TimePickerView extends GetView<TimePickerController> {
  const TimePickerView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleTimePicker();
  }
}
