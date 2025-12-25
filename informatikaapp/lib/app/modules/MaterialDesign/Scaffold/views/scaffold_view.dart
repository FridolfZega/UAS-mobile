import 'package:flutter/material.dart';


import 'package:get/get.dart';


import '../controllers/scaffold_controller.dart';


class ScaffoldView extends GetView<ScaffoldController> {
  const ScaffoldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Struktur AppBar
      appBar: AppBar(
        title: Text('Scaffold Demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      // 2. Struktur Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text(
              'Scaffold Structure',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('AppBar, Body, FloatingActionButton & more'),
          ],
        ),
      ),
      // 3. Struktur FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // 4. Struktur Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      // 5. Struktur BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
