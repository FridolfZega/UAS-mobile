import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: _buildAppBar(),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "modul Praktikum Universitas Matana",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            _listTile(
              Icons.android_sharp,
               Colors.tealAccent,
                Text('widgets'),
                 Text("Contoh widget di flutter"),
                  () {
                    Get.toNamed('/widgets');
                  }),
                   _listTile(
              Icons.adb,
               Colors.blueAccent,
                Text('API Integration'),
                 Text("contoh latihan webservice"),
                  () {
                    Get.toNamed('/api-integration');
                  }),

                  _listTile(
                    Icons.ads_click, 
                    Colors.redAccent,
                     Text('Locale Storage'),
                      Text('contoh latihan penyimpanan di lokal'),
                       () {
                        Get.toNamed('/local-storage');
                       }),
                       _listTile(
                        Icons.agriculture_sharp,
                         Colors.greenAccent,
                          Text("Device Features"),
                           Text("Contoh latihan mengakses hardware"),
                            () {
                              Get.toNamed('/device-features');
                            }),
                             _listTile(
                        Icons.bolt,
                         Colors.yellowAccent,
                          Text("project Base"),
                           Text("Contoh latihan studi kasus"),
                            () {
                              Get.toNamed('/study-case');
                            }),
                  
          ],
        )
      ),
    ),
    );
  }
// untuk app bar
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Mobile Programming", 
        style: TextStyle(
          color: Colors.white
        ),

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
              )
          ),
        ),

        actions: [
          IconButton(
            onPressed: (){
              Get.snackbar('hai', 'Anda tap icon Favorite');
         
            }, 
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            )
            )
        ],
      


    );
  }
  // untuk list tile
  Widget _listTile(
    IconData icon,
    Color color,
    Widget title,
    Widget subtitle,

    void Function()? onTap,
  ){
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20), 
        ),
        child: Icon(icon, color: Colors.white,),
      ),
      subtitle: subtitle,
      title: title,
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );

  }

  // body
}
