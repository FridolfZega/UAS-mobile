import 'package:flutter/material.dart';


class SampleTabBar extends StatefulWidget {
  const SampleTabBar({super.key});


  @override
  State<SampleTabBar> createState() => _SampleTabBarState();
}


class _SampleTabBarState extends State<SampleTabBar> with TickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }


  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Demo'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.search), text: 'Search'),
            Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
            Tab(icon: Icon(Icons.person), text: 'Profile'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTabContent('Home', Icons.home, Colors.blue, 'Welcome to the home page'),
          _buildTabContent('Search', Icons.search, Colors.green, 'Search for anything you need'),
          _buildTabContent('Favorites', Icons.favorite, Colors.red, 'Your favorite items appear here'),
          _buildTabContent('Profile', Icons.person, Colors.purple, 'Manage your profile settings'),
        ],
      ),
    );
  }


  Widget _buildTabContent(String title, IconData icon, Color color, String description) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80, color: color),
          SizedBox(height: 20),
          Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color)),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(description, textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: color),
            child: Text('$title Action'),
          ),
        ],
      ),
    );
  }
}
