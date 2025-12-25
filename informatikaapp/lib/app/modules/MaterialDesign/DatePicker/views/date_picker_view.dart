import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/date_picker_controller.dart';
import 'SampleDatePicker.dart';


class DatePickerView extends GetView<DatePickerController> {
  const DatePickerView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleDatePicker();
  }
}
