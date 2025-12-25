import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/divider_controller.dart';
import 'SampleDivider.dart';


class DividerView extends GetView<DividerController> {
  const DividerView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleDivider();
  }
}
