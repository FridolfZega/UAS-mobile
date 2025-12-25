import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/linear_progress_indicator_controller.dart';
import 'SampleLinearProgressIndicator.dart';


class LinearProgressIndicatorView
    extends GetView<LinearProgressIndicatorController> {
  const LinearProgressIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleLinearProgressIndicator();
  }
}
