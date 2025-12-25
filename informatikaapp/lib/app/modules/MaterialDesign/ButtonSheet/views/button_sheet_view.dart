import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/button_sheet_controller.dart';
import 'SampleBottomSheet.dart';


class ButtonSheetView extends GetView<ButtonSheetController> {
  const ButtonSheetView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleBottomSheet();
  }
}
