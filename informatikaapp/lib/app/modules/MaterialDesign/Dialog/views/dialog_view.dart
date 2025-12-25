import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/dialog_controller.dart';
import 'SampleDialog.dart';


class DialogView extends GetView<DialogController> {
  const DialogView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleDialog();
  }
}
