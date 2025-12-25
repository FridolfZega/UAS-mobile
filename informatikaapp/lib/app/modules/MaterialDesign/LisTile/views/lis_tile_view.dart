import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/lis_tile_controller.dart';
import 'SampleListTile.dart';


class LisTileView extends GetView<LisTileController> {
  const LisTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleListTile();
  }
}
