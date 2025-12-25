import 'package:flutter/material.dart';


class SampleDrawer extends StatefulWidget {
  const SampleDrawer({super.key});


  @override
  State<SampleDrawer> createState() => _SampleDrawerState();
}


class _SampleDrawerState extends State<SampleDrawer> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _fadeController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  String _selectedPage = 'Home';


  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _fadeController, curve: Curves.easeIn));
   
    _slideController.forward();
    _fadeController.forward();
  }


  @override
  void dispose() {
    _slideController.dispose();
    _fadeController.dispose();
    super.dispose();
  }


  void _onMenuTap(String page) {
    setState(() {
      _selectedPage = page;
    });
    Navigator.pop(context);
    _fadeController.reset();
    _fadeController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: SlideTransition(
          position: _slideAnimation,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal, Colors.tealAccent],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40, color: Colors.teal),
                    ),
                    SizedBox(height: 10),
                    Text('Flutter User', style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('user@flutter.dev', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
              _buildAnimatedTile(Icons.home, 'Home'),
              _buildAnimatedTile(Icons.settings, 'Settings'),
              _buildAnimatedTile(Icons.favorite, 'Favorites'),
              _buildAnimatedTile(Icons.info, 'About'),
              Divider(),
              _buildAnimatedTile(Icons.logout, 'Logout'),
            ],
          ),
        ),
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(_getPageIcon(), size: 100, color: Colors.teal),
              SizedBox(height: 20),
              Text(
                _selectedPage,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              SizedBox(height: 10),
              Text('Selected from animated drawer'),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildAnimatedTile(IconData icon, String title) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      color: _selectedPage == title ? Colors.teal.withOpacity(0.1) : null,
      child: ListTile(
        leading: Icon(icon, color: _selectedPage == title ? Colors.teal : null),
        title: Text(title, style: TextStyle(
          color: _selectedPage == title ? Colors.teal : null,
          fontWeight: _selectedPage == title ? FontWeight.bold : null,
        )),
        onTap: () => _onMenuTap(title),
      ),
    );
  }


  IconData _getPageIcon() {
    switch (_selectedPage) {
      case 'Settings': return Icons.settings;
      case 'Favorites': return Icons.favorite;
      case 'About': return Icons.info;
      case 'Logout': return Icons.logout;
      default: return Icons.home;
    }
  }
}
