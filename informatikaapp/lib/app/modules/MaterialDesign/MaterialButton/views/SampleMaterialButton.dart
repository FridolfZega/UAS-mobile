import 'package:flutter/material.dart';


class SampleMaterialButton extends StatefulWidget {
  const SampleMaterialButton({super.key});


  @override
  State<SampleMaterialButton> createState() => _SampleMaterialButtonState();
}


class _SampleMaterialButtonState extends State<SampleMaterialButton> {
  int _pressCount = 0;
  bool _isEnabled = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialButton Demo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.smart_button, size: 80, color: Colors.deepPurple),
            SizedBox(height: 20),
            Text('MaterialButton Examples', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Note: MaterialButton is deprecated, use ElevatedButton/TextButton instead',
                 style: TextStyle(color: Colors.orange, fontStyle: FontStyle.italic)),
            SizedBox(height: 20),
           
            Text('Basic MaterialButton:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Text('Basic MaterialButton'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
           
            SizedBox(height: 20),
            Text('Elevated Style (use ElevatedButton instead):', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Text('Elevated Style'),
              color: Colors.green,
              textColor: Colors.white,
              elevation: 8,
            ),
           
            SizedBox(height: 20),
            Text('Rounded MaterialButton:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Text('Rounded Button'),
              color: Colors.orange,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
           
            SizedBox(height: 20),
            Text('MaterialButton with Icon:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Like'),
                ],
              ),
              color: Colors.red,
              textColor: Colors.white,
            ),
           
            SizedBox(height: 20),
            Text('Custom Padding:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Text('Large Padding'),
              color: Colors.purple,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
           
            SizedBox(height: 20),
            Text('Minimum Size:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () => setState(() => _pressCount++),
              child: Text('Wide Button'),
              color: Colors.teal,
              textColor: Colors.white,
              minWidth: double.infinity,
              height: 50,
            ),
           
            SizedBox(height: 20),
            Text('Disabled Button:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: _isEnabled ? () => setState(() => _pressCount++) : null,
              child: Text('Toggle Me'),
              color: Colors.indigo,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.white70,
            ),
           
            SizedBox(height: 10),
            Row(
              children: [
                Text('Enabled: '),
                Switch(
                  value: _isEnabled,
                  onChanged: (value) => setState(() => _isEnabled = value),
                ),
              ],
            ),
           
            SizedBox(height: 20),
            Text('Different Shapes:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                MaterialButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('Square'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                MaterialButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('Circle'),
                  color: Colors.green,
                  textColor: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
                MaterialButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('Stadium'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  shape: StadiumBorder(),
                ),
              ],
            ),
           
            SizedBox(height: 20),
            Text('Modern Replacements:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('ElevatedButton (recommended)'),
                ),
                SizedBox(height: 8),
                TextButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('TextButton (recommended)'),
                ),
                SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () => setState(() => _pressCount++),
                  child: Text('OutlinedButton (recommended)'),
                ),
              ],
            ),
           
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Button Statistics', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Total Presses: $_pressCount'),
                  Text('Status: ${_isEnabled ? "Enabled" : "Disabled"}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
