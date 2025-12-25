import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/chip_controller.dart';
import 'SampleChip.dart';


class ChipView extends GetView<ChipController> {
  const ChipView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleChip();
  }
}
