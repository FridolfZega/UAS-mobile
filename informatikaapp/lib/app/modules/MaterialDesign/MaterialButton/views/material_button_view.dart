import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/material_button_controller.dart';
import 'SampleMaterialButton.dart';


class MaterialButtonView extends GetView<MaterialButtonController> {
  const MaterialButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleMaterialButton();
  }
}
