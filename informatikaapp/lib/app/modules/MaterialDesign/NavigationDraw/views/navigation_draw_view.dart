import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/navigation_draw_controller.dart';
import 'SampleNavigationDrawer.dart';


class NavigationDrawView extends GetView<NavigationDrawController> {
  const NavigationDrawView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleNavigationDrawer();
  }
}
