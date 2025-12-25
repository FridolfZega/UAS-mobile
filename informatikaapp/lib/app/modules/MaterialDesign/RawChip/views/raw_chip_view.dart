import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/raw_chip_controller.dart';
import 'SampleRawChip.dart';


class RawChipView extends GetView<RawChipController> {
  const RawChipView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleRawChip();
  }
}
