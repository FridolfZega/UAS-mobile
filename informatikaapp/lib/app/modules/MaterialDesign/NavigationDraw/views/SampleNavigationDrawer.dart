import 'package:flutter/material.dart';


class SampleNavigationDrawer extends StatefulWidget {
  const SampleNavigationDrawer({super.key});


  @override
  State<SampleNavigationDrawer> createState() => _SampleNavigationDrawerState();
}


class _SampleNavigationDrawerState extends State<SampleNavigationDrawer> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NavigationDrawView')),
      drawer: NavigationDrawer(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
          Navigator.pop(context); // Close drawer
        },
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.blue),
                ),
                SizedBox(height: 8),
                Text(
                  'John Doe',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'john.doe@example.com',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Home'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: Text('Dashboard'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.analytics_outlined),
            selectedIcon: Icon(Icons.analytics),
            label: Text('Analytics'),
          ),
          const Divider(),
          const NavigationDrawerDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.help_outline),
            selectedIcon: Icon(Icons.help),
            label: Text('Help'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: Text('About'),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          _DrawerContent(title: 'Home', icon: Icons.home, color: Colors.blue),
          _DrawerContent(title: 'Dashboard', icon: Icons.dashboard, color: Colors.green),
          _DrawerContent(title: 'Analytics', icon: Icons.analytics, color: Colors.orange),
          _DrawerContent(title: 'Settings', icon: Icons.settings, color: Colors.purple),
          _DrawerContent(title: 'Help', icon: Icons.help, color: Colors.red),
          _DrawerContent(title: 'About', icon: Icons.info, color: Colors.teal),
        ],
      ),
    );
  }
}


class _DrawerContent extends StatelessWidget {
  const _DrawerContent({
    required this.title,
    required this.icon,
    required this.color,
  });


  final String title;
  final IconData icon;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 32, color: color),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$title Section', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('This is the $title section content. Use the navigation drawer to switch between different sections of the app.'),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$title action performed!')),
                          );
                        },
                        child: Text('$title Action'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: const Text('Open Drawer'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
