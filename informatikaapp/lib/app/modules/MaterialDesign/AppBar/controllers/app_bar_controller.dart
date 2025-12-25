import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarController extends GetxController {
  // TODO: Implement AppBarController
  final count = 0.obs;

  // Logika
  // 1. state Reaktif
  // angka 0 buka huruf o
  final selectedIndex = 0.obs;

  // data App Bar (konstanta)
  final appBarTypes = [
    'Basic AppBar',
    'Gradient AppBar',
    'Custom AppBar',
    'Transparent AppBar',
  ];

  // 2. Metode untuk mengubah State
  void selectAppBar(int index) {
    selectedIndex.value = index;

    // menggunakan print / Get.log() untuk tujuan debugging
    Get.log('AppBar type changed to: ${appBarTypes[index]}');
  }

  // 3. Fungsi Global untuk snackbar
  void showSnackBar(String message) {
    // Menggunakan Get.snackbar untuk tampilan Snackbar yang lebih bersih
    Get.snackbar(
      'Aksi AppBar',
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black54,
      colorText: Colors.white,
    );
  }

  // 4. Metode Pembantu untuk membangun AppBar (Business Logic)
  PreferredSizeWidget buildAppBar() {
    // Mengambil nilai indeks saat ini
    final type = selectedIndex.value;

    switch (type) {
      case 0:
        return AppBar(
          title: const Text('Basic AppBar (GetX)'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              // Panggil fungsi Controller
              onPressed: () => showSnackBar('Search pressed'),
            ),
          ],
        );

      case 1:
        return PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            title: const Text('Gradient AppBar (GetX)'),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () => showSnackBar('Favorite pressed'),
              ),
            ],
          ),
        );

      case 2:
        return AppBar(
          title: Row(
            children: [
              const Icon(Icons.flutter_dash, size: 24),
              const SizedBox(width: 8),
              const Text('Custom AppBar'),
            ],
          ),
          backgroundColor: Colors.teal,
          elevation: 8,
          shadowColor: Colors.teal.withValues(alpha: 0.5),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => showSnackBar('Notifications pressed'),
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () => showSnackBar('Profile pressed'),
            ),
          ],
        );

      case 3:
        return AppBar(
          title: const Text('Transparent AppBar (GetX)'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => showSnackBar('Menu pressed'),
            ),
          ],
        );

      default:
        return AppBar(title: const Text('AppBar'));
    }
  }
}
