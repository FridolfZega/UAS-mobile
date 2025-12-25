import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'animated_page_widget.dart';


// GetSingleTickerProviderStateMixin digunakan untuk animasi
class BottomNavigationBarController extends GetxController with GetSingleTickerProviderStateMixin {
 
  final count = 0.obs;
 
  //1. State: Indeks yang dipilih
  final selectedIndex = 0.obs;
  // 2. Variabel Animasi
  late AnimationController animationController; // gunanya untuk mengontrol animasi
  late Animation<double> animation; // mendefinisikan jenis animasi


  // 3. Perbarui daftar pages untuk menggunakan AnimatedPageWidget
  final List<Widget> pages = [
    // 4. Halaman-halaman animasi
    // Gunakan AnimatedPageWidget
    const AnimatedPageWidget(icon: Icons.home, title: 'Home', color: Colors.blue),
    const AnimatedPageWidget(icon: Icons.search, title: 'Search', color: Colors.green),
    const AnimatedPageWidget(icon: Icons.favorite, title: 'Favorites', color: Colors.red),
    const AnimatedPageWidget(icon: Icons.person, title: 'Profile', color: Colors.purple),
  ];


 
  @override
  void onInit() {
    super.onInit();


    //5. Inisialisasi AnimationController dengan GetSingleTickerProviderStateMixin
    animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    //6. Definisikan animasi dengan kurva
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    //7. Mulai animasi
    animationController.forward();


  }


  @override
  void onReady() {
    super.onReady();
  }


  @override
  void onClose() {
    //8. Memastikan controller animasi di-dispose saat controller GetX ditutup
    animationController.dispose();
    super.onClose();
  }


  // 9. Logika saat item BottomNavigationBar diklik
  void onItemTapped(int index) {
    // Mengubah state menggunakan .value dan otomatis mengupdate UI
    selectedIndex.value = index;
    // Reset dan jalankan animasi
    animationController.reset();
    // forward dimulai ulang
    animationController.forward();
  }


  void increment() => count.value++;
}
