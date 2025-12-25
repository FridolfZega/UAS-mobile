import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/app_bar_controller.dart';


class AppBarView extends GetView<AppBarController> {
  const AppBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bungkus AppBar dengan Obx.
      // Obx akan membaca perubahan pada controller.selectedIndex
      appBar: PreferredSize(
      // Tinggi AppBar standar
        preferredSize: const Size.fromHeight(kToolbarHeight), 
        child: Obx(() => controller.buildAppBar()),
      ),
      body: Column(
        children: [
          const Text('AppBar Examples',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          // pilih clip
          Obx(()=> Wrap(
            spacing: 8,
            // Mengakses data appBarTypes dari Controller
            children: List.generate(controller.appBarTypes.length, (index) {
                    return ChoiceChip(
                      label: Text(controller.appBarTypes[index]),
                      // Membandingkan dengan state reaktif
                      selected: controller.selectedIndex.value == index,
                      onSelected: (selected) {
                        if (selected) {
                          // Memanggil metode Controller untuk mengubah state
                          controller.selectAppBar(index);
                        }
                      },
                    );
                  }),
          )),
          // Konten Body (tidak perlu Obx karena tidak berubah)
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text('Item ${index + 1}'),
                subtitle: Text('Subtitle for item ${index + 1}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
