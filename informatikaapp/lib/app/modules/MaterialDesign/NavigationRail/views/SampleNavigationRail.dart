import 'package:flutter/material.dart';


class SampleNavigationRail extends StatefulWidget {
  const SampleNavigationRail({super.key});


  @override
  State<SampleNavigationRail> createState() => _SampleNavigationRailState();
}


class _SampleNavigationRailState extends State<SampleNavigationRail> {
  int _selectedIndex = 0;
  bool _extended = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NavigationRail Widget')),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) => setState(() => _selectedIndex = index),
            extended: _extended,
            leading: FloatingActionButton(
              elevation: 0,
              onPressed: () => setState(() => _extended = !_extended),
              child: Icon(_extended ? Icons.menu_open : Icons.menu),
            ),
            trailing: Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Settings pressed')),
                      );
                    },
                    icon: const Icon(Icons.settings),
                  ),
                ),
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.analytics_outlined),
                selectedIcon: Icon(Icons.analytics),
                label: Text('Analytics'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_outline),
                selectedIcon: Icon(Icons.people),
                label: Text('Users'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.inventory_outlined),
                selectedIcon: Icon(Icons.inventory),
                label: Text('Inventory'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: const [
                _RailContent(title: 'Home', icon: Icons.home, color: Colors.blue),
                _RailContent(title: 'Dashboard', icon: Icons.dashboard, color: Colors.green),
                _RailContent(title: 'Analytics', icon: Icons.analytics, color: Colors.orange),
                _RailContent(title: 'Users', icon: Icons.people, color: Colors.purple),
                _RailContent(title: 'Inventory', icon: Icons.inventory, color: Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class _RailContent extends StatelessWidget {
  const _RailContent({
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
      padding: const EdgeInsets.all(24),
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
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: List.generate(6, (index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon, size: 48, color: color.withOpacity(0.7)),
                        const SizedBox(height: 8),
                        Text(
                          '$title ${index + 1}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Sample content for $title section',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('$title ${index + 1} action')),
                            );
                          },
                          child: const Text('Action'),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
