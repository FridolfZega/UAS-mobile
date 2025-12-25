import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/circular_progress_indicator_controller.dart';
import 'SampleCircularProgressIndicator.dart';


class CircularProgressIndicatorView
    extends GetView<CircularProgressIndicatorController> {
  const CircularProgressIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleCircularProgressIndicator();
  }
    }