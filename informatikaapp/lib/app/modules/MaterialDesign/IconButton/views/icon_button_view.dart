import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/icon_button_controller.dart';
import 'SampleIconButton.dart';


class IconButtonView extends GetView<IconButtonController> {
  const IconButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleIconButton();
  }
}
