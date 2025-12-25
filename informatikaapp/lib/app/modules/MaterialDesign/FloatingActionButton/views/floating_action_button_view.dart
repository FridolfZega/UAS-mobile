import 'package:flutter/material.dart';


import 'package:get/get.dart';
import '../controllers/floating_action_button_controller.dart';
import 'SampleFloatingActionButton.dart';


class FloatingActionButtonView extends GetView<FloatingActionButtonController> {
  const FloatingActionButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleFloatingActionButton();
  }
}
