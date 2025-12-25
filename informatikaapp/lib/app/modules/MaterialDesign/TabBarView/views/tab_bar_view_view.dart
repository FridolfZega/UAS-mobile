import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/tab_bar_view_controller.dart';
import 'SampleTabBarView.dart';


class TabBarViewView extends GetView<TabBarViewController> {
  const TabBarViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleTabBarView();
  }
}
