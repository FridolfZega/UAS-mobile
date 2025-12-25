import 'package:flutter/material.dart';


class SampleListTile extends StatefulWidget {
  const SampleListTile({super.key});


  @override
  State<SampleListTile> createState() => _SampleListTileState();
}


class _SampleListTileState extends State<SampleListTile> {
  bool _isSelected = false;
  bool _isChecked = false;
  String _selectedValue = 'Option 1';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Demo'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.list, size: 80, color: Colors.teal),
                  SizedBox(height: 20),
                  Text('ListTile Examples', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
           
            Text('  Basic ListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              title: Text('Basic ListTile'),
              subtitle: Text('Simple list item'),
              onTap: () {},
            ),
            Divider(),
           
            Text('  ListTile with Leading Icon:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('John Doe'),
              subtitle: Text('Software Developer'),
              onTap: () {},
            ),
            Divider(),
           
            Text('  ListTile with Trailing:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              leading: Icon(Icons.email, color: Colors.green),
              title: Text('New Message'),
              subtitle: Text('You have 3 unread messages'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            Divider(),
           
            Text('  Three-line ListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/40'),
              ),
              title: Text('Alice Smith'),
              subtitle: Text('Hey there! How are you doing today?\nLet me know if you need anything.'),
              trailing: Text('2:30 PM'),
              isThreeLine: true,
              onTap: () {},
            ),
            Divider(),
           
            Text('  Selected ListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              leading: Icon(Icons.favorite, color: _isSelected ? Colors.red : Colors.grey),
              title: Text('Favorite Item'),
              subtitle: Text('Tap to toggle selection'),
              selected: _isSelected,
              onTap: () => setState(() => _isSelected = !_isSelected),
            ),
            Divider(),
           
            Text('  CheckboxListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            CheckboxListTile(
              title: Text('Enable Notifications'),
              subtitle: Text('Receive push notifications'),
              value: _isChecked,
              onChanged: (value) => setState(() => _isChecked = value!),
              secondary: Icon(Icons.notifications),
            ),
            Divider(),
           
            Text('  RadioListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            RadioListTile<String>(
              title: Text('Option 1'),
              value: 'Option 1',
              groupValue: _selectedValue,
              onChanged: (value) => setState(() => _selectedValue = value!),
            ),
            RadioListTile<String>(
              title: Text('Option 2'),
              value: 'Option 2',
              groupValue: _selectedValue,
              onChanged: (value) => setState(() => _selectedValue = value!),
            ),
            Divider(),
           
            Text('  SwitchListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SwitchListTile(
              title: Text('Dark Mode'),
              subtitle: Text('Enable dark theme'),
              value: _isChecked,
              onChanged: (value) => setState(() => _isChecked = value),
              secondary: Icon(Icons.dark_mode),
            ),
            Divider(),
           
            Text('  Dense ListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(
              dense: true,
              leading: Icon(Icons.settings, size: 20),
              title: Text('Settings', style: TextStyle(fontSize: 14)),
              subtitle: Text('App preferences', style: TextStyle(fontSize: 12)),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            Divider(),
           
            Text('  Custom ListTile:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            Container(
              color: Colors.teal.withOpacity(0.1),
              child: ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.star, color: Colors.white),
                ),
                title: Text('Premium Feature'),
                subtitle: Text('Unlock advanced functionality'),
                trailing: Chip(
                  label: Text('NEW', style: TextStyle(fontSize: 10)),
                  backgroundColor: Colors.orange,
                ),
                onTap: () {},
              ),
            ),
           
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text('Current State', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('Selected: ${_isSelected ? "Yes" : "No"}'),
                    Text('Checked: ${_isChecked ? "Yes" : "No"}'),
                    Text('Radio Value: $_selectedValue'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
