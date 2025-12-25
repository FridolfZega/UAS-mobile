import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/navigation_rail_controller.dart';
import 'SampleNavigationRail.dart';


class NavigationRailView extends GetView<NavigationRailController> {
  const NavigationRailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SampleNavigationRail()
      );
  }
}
