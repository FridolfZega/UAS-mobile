import 'package:flutter/material.dart';


class SampleTabBarView extends StatefulWidget {
  const SampleTabBarView({super.key});


  @override
  State<SampleTabBarView> createState() => _SampleTabBarViewState();
}


class _SampleTabBarViewState extends State<SampleTabBarView> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
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
        title: Text('TabBarView Demo'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.dashboard), text: 'Dashboard'),
            Tab(icon: Icon(Icons.analytics), text: 'Analytics'),
            Tab(icon: Icon(Icons.settings), text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDashboardTab(),
          _buildAnalyticsTab(),
          _buildSettingsTab(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        color: Colors.teal.withOpacity(0.1),
        child: Text(
          'Current Tab: ${_getCurrentTabName()}',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


  String _getCurrentTabName() {
    switch (_currentIndex) {
      case 0: return 'Dashboard';
      case 1: return 'Analytics';
      case 2: return 'Settings';
      default: return 'Unknown';
    }
  }


  Widget _buildDashboardTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Dashboard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildDashboardCard('Total Users', '1,234', Icons.people, Colors.blue),
              _buildDashboardCard('Revenue', '\$12,345', Icons.attach_money, Colors.green),
              _buildDashboardCard('Orders', '567', Icons.shopping_cart, Colors.orange),
              _buildDashboardCard('Products', '89', Icons.inventory, Colors.purple),
            ],
          ),
          SizedBox(height: 20),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.person_add, color: Colors.green),
                    title: Text('New user registered'),
                    subtitle: Text('2 minutes ago'),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag, color: Colors.blue),
                    title: Text('Order completed'),
                    subtitle: Text('5 minutes ago'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.orange),
                    title: Text('Payment received'),
                    subtitle: Text('10 minutes ago'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildAnalyticsTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Analytics', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Performance Metrics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  _buildMetricRow('Page Views', '45,678', '+12%'),
                  _buildMetricRow('Unique Visitors', '12,345', '+8%'),
                  _buildMetricRow('Bounce Rate', '32%', '-5%'),
                  _buildMetricRow('Avg. Session', '3:45', '+15%'),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Top Pages', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  _buildPageRow('/home', '15,234 views'),
                  _buildPageRow('/products', '8,567 views'),
                  _buildPageRow('/about', '4,321 views'),
                  _buildPageRow('/contact', '2,109 views'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildSettingsTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Settings', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  subtitle: Text('Manage notification preferences'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Privacy & Security'),
                  subtitle: Text('Control your privacy settings'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Account'),
                  subtitle: Text('Manage your account details'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text('Logout', style: TextStyle(color: Colors.red)),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildDashboardCard(String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 8),
            Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
            Text(title, style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }


  Widget _buildMetricRow(String label, String value, String change) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Row(
            children: [
              Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 8),
              Text(change, style: TextStyle(color: change.startsWith('+') ? Colors.green : Colors.red)),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildPageRow(String page, String views) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(page, style: TextStyle(fontFamily: 'monospace')),
          Text(views, style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}
