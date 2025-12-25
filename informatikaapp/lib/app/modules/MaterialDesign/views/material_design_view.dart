import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/material_design_controller.dart';
import '../../../routes/app_pages.dart';

class MaterialDesignView extends GetView<MaterialDesignController> {
  const MaterialDesignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bentuk Material Design",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
                children: [

                  // ================= MENU MATERIAL DESIGN =================

                  _itemGridView(
                    const Icon(Icons.star, color: Colors.white, size: 30),
                    Colors.primaries[10 % Colors.primaries.length],
                    Colors.primaries[10 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "AppBar",
                    () => Get.toNamed(Routes.APP_BAR),
                  ),

                  _itemGridView(
                    const Icon(Icons.ac_unit, color: Colors.white, size: 30),
                    Colors.primaries[5 % Colors.primaries.length],
                    Colors.primaries[5 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "MaterialApp",
                    () => Get.toNamed(Routes.MATERIAL_APP),
                  ),

                  _itemGridView(
                    const Icon(Icons.access_alarm, color: Colors.white, size: 30),
                    Colors.primaries[1 % Colors.primaries.length],
                    Colors.primaries[1 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "Scaffold",
                    () => Get.toNamed(Routes.SCAFFOLD),
                  ),

                  _itemGridView(
                    const Icon(Icons.access_time_filled,
                        color: Colors.white, size: 30),
                    Colors.primaries[2 % Colors.primaries.length],
                    Colors.primaries[2 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "BottomNavigationBar",
                    () => Get.toNamed(Routes.BOTTOM_NAVIGATION_BAR),
                  ),

                  _itemGridView(
                    const Icon(Icons.accessibility,
                        color: Colors.white, size: 30),
                    Colors.primaries[3 % Colors.primaries.length],
                    Colors.primaries[3 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "NavigationBar",
                    () => Get.toNamed(Routes.NAVIGATION_BAR),
                  ),

                  _itemGridView(
                    const Icon(Icons.accessible,
                        color: Colors.white, size: 30),
                    Colors.primaries[4 % Colors.primaries.length],
                    Colors.primaries[4 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "NavigationDrawer",
                    () => Get.toNamed(Routes.NAVIGATION_DRAW),
                  ),

                  _itemGridView(
                    const Icon(Icons.account_balance,
                        color: Colors.white, size: 30),
                    Colors.primaries[5 % Colors.primaries.length],
                    Colors.primaries[5 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "NavigationRail",
                    () => Get.toNamed(Routes.NAVIGATION_RAIL),
                  ),

                  _itemGridView(
                    const Icon(Icons.account_balance_wallet,
                        color: Colors.white, size: 30),
                    Colors.primaries[6 % Colors.primaries.length],
                    Colors.primaries[6 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "FloatingActionButton",
                    () => Get.toNamed(Routes.FLOATING_ACTION_BUTTON),
                  ),

                  _itemGridView(
                    const Icon(Icons.account_box,
                        color: Colors.white, size: 30),
                    Colors.primaries[7 % Colors.primaries.length],
                    Colors.primaries[7 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "SnackBar",
                    () => Get.toNamed(Routes.SNACK_BAR),
                  ),

                  _itemGridView(
                    const Icon(Icons.account_circle,
                        color: Colors.white, size: 30),
                    Colors.primaries[8 % Colors.primaries.length],
                    Colors.primaries[8 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "BottomSheet",
                    () => Get.toNamed(Routes.BUTTON_SHEET),
                  ),

                  _itemGridView(
                    const Icon(Icons.account_tree,
                        color: Colors.white, size: 30),
                    Colors.primaries[9 % Colors.primaries.length],
                    Colors.primaries[9 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "Card",
                    () => Get.toNamed(Routes.CARD),
                  ),

                  _itemGridView(
                    const Icon(Icons.no_accounts,
                        color: Colors.white, size: 30),
                    Colors.primaries[11 % Colors.primaries.length],
                    Colors.primaries[11 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "Chip",
                    () => Get.toNamed(Routes.CHIP),
                  ),

                  _itemGridView(
                    const Icon(Icons.ad_units,
                        color: Colors.white, size: 30),
                    Colors.primaries[12 % Colors.primaries.length],
                    Colors.primaries[12 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "RawChip",
                    () => Get.toNamed(Routes.RAW_CHIP),
                  ),

                  _itemGridView(
                    const Icon(Icons.adb, color: Colors.white, size: 30),
                    Colors.primaries[13 % Colors.primaries.length],
                    Colors.primaries[13 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "CircularProgress",
                    () => Get.toNamed(Routes.CIRCULAR_PROGRESS_INDICATOR),
                  ),

                  _itemGridView(
                    const Icon(Icons.add, color: Colors.white, size: 30),
                    Colors.primaries[14 % Colors.primaries.length],
                    Colors.primaries[14 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "LinearProgress",
                    () => Get.toNamed(Routes.LINEAR_PROGRESS_INDICATOR),
                  ),

                  _itemGridView(
                    const Icon(Icons.add_alert,
                        color: Colors.white, size: 30),
                    Colors.primaries[15 % Colors.primaries.length],
                    Colors.primaries[15 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "DatePicker",
                    () => Get.toNamed(Routes.DATE_PICKER),
                  ),

                  _itemGridView(
                    const Icon(Icons.accessible_forward,
                        color: Colors.white, size: 30),
                    Colors.primaries[16 % Colors.primaries.length],
                    Colors.primaries[16 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "TimePicker",
                    () => Get.toNamed(Routes.TIME_PICKER),
                  ),

                  _itemGridView(
                    const Icon(Icons.add_a_photo,
                        color: Colors.white, size: 30),
                    Colors.primaries[17 % Colors.primaries.length],
                    Colors.primaries[17 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "Dialog",
                    () => Get.toNamed(Routes.DIALOG),
                  ),

                  _itemGridView(
                    const Icon(Icons.add_business,
                        color: Colors.white, size: 30),
                    Colors.primaries[18 % Colors.primaries.length],
                    Colors.primaries[18 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "Divider",
                    () => Get.toNamed(Routes.DIVIDER),
                  ),

                  _itemGridView(
                    const Icon(Icons.add_home_work_outlined,
                        color: Colors.white, size: 30),
                    Colors.primaries[23 % Colors.primaries.length],
                    Colors.primaries[23 % Colors.primaries.length]
                        .withValues(alpha: 0.7),
                    "TabBarView",
                    () => Get.toNamed(Routes.TAB_BAR_VIEW),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ================= APPBAR =================
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Widget Material Design",
          style: TextStyle(color: Colors.white)),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}

// ================= ITEM GRID =================
Widget _itemGridView(
  Icon icon,
  Color color1,
  Color color2,
  String title,
  VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1, color2]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
