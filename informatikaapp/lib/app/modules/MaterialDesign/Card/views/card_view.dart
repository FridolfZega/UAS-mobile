import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/card_controller.dart';
import 'SampleCard.dart';


class CardView extends GetView<CardController> {
  const CardView({super.key});
  @override
  Widget build(BuildContext context) {
    return SampleCard();
  }
}
