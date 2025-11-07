import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/widgets_controller.dart';
import '../../MaterialDesign/views/material_design_view.dart';
import '../../BasicWidget/views/basic_widget_view.dart';
import '../../LayoutStructure/views/layout_structure_view.dart';
import '../../InputForms/views/input_forms_view.dart';
import '../../ScrollingList/views/scrolling_list_view.dart';

class WidgetsView extends GetView<WidgetsController> {
  const WidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Praktikum Widgets ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              _listTile(
                Icons.accessibility,
                const Color.fromARGB(138, 100, 255, 219),
                const Text("Material Design"),
                const Text("Contoh widget Material Design"),
                () {
                  Get.to(MaterialDesignView());
                },
              ),
              _listTile(
                Icons.android_rounded,
                const Color.fromARGB(138, 255, 100, 100),
                const Text("Basic Widget"),
                const Text("Contoh widget dasar pada Flutter"),
                () {
                  Get.to(BasicWidgetView());
                },
              ),
              _listTile(
                Icons.dashboard,
                const Color.fromARGB(138, 255, 180, 0),
                const Text("Layout Structure"),
                const Text("Struktur layout di Flutter"),
                () {
                  Get.to(LayoutStructureView());
                },
              ),
              _listTile(
                Icons.input_rounded,
                const Color.fromARGB(138, 0, 180, 255),
                const Text("Input Forms"),
                const Text("Contoh form input di Flutter"),
                () {
                  Get.to(InputFormsView());
                },
              ),
              _listTile(
                Icons.list_alt,
                const Color.fromARGB(138, 255, 150, 150),
                const Text("Scrolling & Lists"),
                const Text("Contoh list view & scrolling"),
                () {
                  Get.to(ScrollingListView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Mobile Programming",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
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

  // ✅ Tambahkan fungsi ini agar _listTile dikenali
  Widget _listTile(
    IconData icon,
    Color color,
    Widget title,
    Widget subtitle,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: title,
      subtitle: subtitle,
      onTap: onTap,
    );
  }
}
