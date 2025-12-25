import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/bottom_navigation_bar_controller.dart';


class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Demo'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // Obx akan secara otomatis membangun ulang widget di dalamnya
      // ketika nilai selectedIndex.value berubah
      body: AnimatedBuilder(
        animation: controller.animation, // di ambil dari controller fungsi animation
        builder: (context, child) {
          return Transform.scale(
            // scale diambil dari nilai animasi
            scale: controller.animation.value,
            // page yang dipilih berdasarkan selectedIndex
            child: controller.pages[controller.selectedIndex.value],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Gunakan nilai selectedIndex dari controller
        currentIndex: controller.selectedIndex.value,
        // panggil metode onItemTapped dari controller
        onTap: controller.onItemTapped,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
