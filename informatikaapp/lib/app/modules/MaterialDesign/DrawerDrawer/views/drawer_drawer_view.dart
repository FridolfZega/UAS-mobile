import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/drawer_drawer_controller.dart';
import 'SampleDrawer.dart';


class DrawerDrawerView extends GetView<DrawerDrawerController> {
  const DrawerDrawerView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleDrawer();
  }
}
