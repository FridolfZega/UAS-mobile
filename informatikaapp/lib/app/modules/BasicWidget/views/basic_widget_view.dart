import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/basic_widget_controller.dart';
// route Navigasi
// gunakan "Routes.xxx" berdasarkan nama path apa yg akan di tuju
import '../../../routes/app_pages.dart';


class BasicWidgetView extends GetView<BasicWidgetController> {
  const BasicWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
     body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bentuk Basic Widget Flutter",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3, // Jumlah kolom
                mainAxisSpacing: 8, // Jarak antar kolom
                crossAxisSpacing: 8, // Jarak antar baris
                childAspectRatio: 1.0,
                children: [
                  // untuk item menu
                  // ke App Bar
                  _itemGridView(
                    Icon(Icons.star, color: Colors.white, size: 30),
                    Colors.primaries[10 % Colors.primaries.length],
                    Colors.primaries[10 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Text",
                    () {
                      Get.toNamed(Routes.TEXT);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.ac_unit, color: Colors.white, size: 30),
                    Colors.primaries[5 % Colors.primaries.length],
                    Colors.primaries[5 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Icon",
                    () {
                      Get.toNamed(Routes.ICON);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.access_alarm, color: Colors.white, size: 30),
                    Colors.primaries[1 % Colors.primaries.length],
                    Colors.primaries[1 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Image",
                    () {
                      Get.toNamed(Routes.IMAGE);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.access_time_filled, color: Colors.white, size: 30),
                    Colors.primaries[2 % Colors.primaries.length],
                    Colors.primaries[2 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "AssetImage",
                    () {
                      Get.toNamed(Routes.ASSET_IMAGE);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.accessibility, color: Colors.white, size: 30),
                    Colors.primaries[3 % Colors.primaries.length],
                    Colors.primaries[3 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "NetworkImage",
                    () {
                      Get.toNamed(Routes.NETWORK_IMAGE);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.accessible, color: Colors.white, size: 30),
                    Colors.primaries[4 % Colors.primaries.length],
                    Colors.primaries[4 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Container",
                    () {
                      Get.toNamed(Routes.CONTAINER);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.account_balance, color: Colors.white, size: 30),
                    Colors.primaries[5 % Colors.primaries.length],
                    Colors.primaries[5 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "SizedBox",
                    () {
                      Get.toNamed(Routes.SIZE_BOX);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
                    Colors.primaries[5 % Colors.primaries.length],
                    Colors.primaries[5 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Placeholder",
                    () {
                      Get.toNamed(Routes.PLACE_HOLDER);
                    },
                  ),
                   _itemGridView(
                    Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
                    Colors.primaries[6 % Colors.primaries.length],
                    Colors.primaries[6 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "RichText",
                    () {
                      Get.toNamed(Routes.RICH_TEXT);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.account_box, color: Colors.white, size: 30),
                    Colors.primaries[7 % Colors.primaries.length],
                    Colors.primaries[7 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Spacer",
                    () {
                      Get.toNamed(Routes.SPACER);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.account_circle, color: Colors.white, size: 30),
                    Colors.primaries[8 % Colors.primaries.length],
                    Colors.primaries[8 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Expanded",
                    () {
                      Get.toNamed(Routes.EXPANDED);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.account_tree, color: Colors.white, size: 30),
                    Colors.primaries[10 % Colors.primaries.length],
                    Colors.primaries[10 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Flexible",
                    () {
                      Get.toNamed(Routes.FLEXIBLE);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.no_accounts, color: Colors.white, size: 30),
                    Colors.primaries[11 % Colors.primaries.length],
                    Colors.primaries[11 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "Builder",
                    () {
                      Get.toNamed(Routes.BUILDER);
                    },
                  ),
                  _itemGridView(
                    Icon(Icons.ad_units, color: Colors.white, size: 30),
                    Colors.primaries[12 % Colors.primaries.length],
                    Colors.primaries[12 % Colors.primaries.length].withValues(
                      alpha: 0.7,
                    ),
                    "ProgressIndicator",
                    () {
                      Get.toNamed(Routes.PROGRESS_INDICATOR);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


 
  // custom widget Appbar
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Widget Basic Flutter",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent, // Penting agar gradient terlihat
      elevation: 0, // Hapus bayangan
      iconTheme: const IconThemeData(color: Colors.white), // Warna ikon bawaan
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


  // custom widget gridview
  _itemGridView(
    Icon iconKu, // untuk icon
    Color color_1, // untuk warna gradasi
    Color color_2, // untuk waran gradasi
    String isiMenu, // isi menu
    void Function()? onTap, // pindah halaman
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color_1, // color_1
            color_2, //color_2
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: GestureDetector(
          onTap: onTap, // pindah menu
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconKu, // icon
              SizedBox(height: 4),
              Text(
                isiMenu, // isi menu
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
