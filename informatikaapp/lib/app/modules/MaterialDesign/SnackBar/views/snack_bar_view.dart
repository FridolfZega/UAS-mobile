import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/snack_bar_controller.dart';
import 'SampleSnackBar.dart';


class SnackBarView extends GetView<SnackBarController> {
  const SnackBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleSnackBar();
  }
}
