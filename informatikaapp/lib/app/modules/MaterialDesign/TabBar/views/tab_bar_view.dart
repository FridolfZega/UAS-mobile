import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/tab_bar_controller.dart';
import 'SampleTabBar.dart';


class TabBarView extends GetView<TabBarController> {
  const TabBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleTabBar();
  }
}
