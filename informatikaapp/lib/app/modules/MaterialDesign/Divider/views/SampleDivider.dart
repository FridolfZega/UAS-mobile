import 'package:flutter/material.dart';


class SampleDivider extends StatefulWidget {
  const SampleDivider({super.key});


  @override
  State<SampleDivider> createState() => _SampleDividerState();
}


class _SampleDividerState extends State<SampleDivider> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  late Animation<Color?> _colorAnimation;
 
  double _thickness = 1.0;
  double _indent = 0.0;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _widthAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _colorAnimation = ColorTween(begin: Colors.grey, end: Colors.blue).animate(_controller);
    _controller.forward();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _animateDivider() {
    _controller.reset();
    _controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider Demo'),
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.horizontal_rule, size: 80, color: Colors.grey[700]),
            SizedBox(height: 20),
            Text('Divider Examples', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
           
            Text('Basic Divider:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(title: Text('Item 1')),
            Divider(),
            ListTile(title: Text('Item 2')),
            Divider(),
            ListTile(title: Text('Item 3')),
           
            SizedBox(height: 20),
            Text('Thick Divider:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(title: Text('Section A')),
            Divider(thickness: 3, color: Colors.blue),
            ListTile(title: Text('Section B')),
           
            SizedBox(height: 20),
            Text('Indented Divider:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ListTile(leading: Icon(Icons.person), title: Text('Contact 1')),
            Divider(indent: 56, endIndent: 16),
            ListTile(leading: Icon(Icons.person), title: Text('Contact 2')),
           
            SizedBox(height: 20),
            Text('Animated Divider:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            AnimatedBuilder(
              animation: _widthAnimation,
              builder: (context, child) {
                return Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * _widthAnimation.value,
                  color: _colorAnimation.value,
                );
              },
            ),
           
            SizedBox(height: 20),
            Text('Vertical Divider:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Center(child: Text('Left'))),
                  VerticalDivider(thickness: 2, color: Colors.red),
                  Expanded(child: Center(child: Text('Center'))),
                  VerticalDivider(thickness: 2, color: Colors.green),
                  Expanded(child: Center(child: Text('Right'))),
                ],
              ),
            ),
           
            SizedBox(height: 20),
            Text('Custom Controls:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Text('Thickness: ${_thickness.toStringAsFixed(1)}'),
            Slider(
              value: _thickness,
              min: 0.5,
              max: 5.0,
              onChanged: (value) => setState(() => _thickness = value),
            ),
            Divider(thickness: _thickness, color: Colors.purple),
           
            SizedBox(height: 10),
            Text('Indent: ${_indent.toStringAsFixed(0)}'),
            Slider(
              value: _indent,
              min: 0,
              max: 100,
              onChanged: (value) => setState(() => _indent = value),
            ),
            Divider(indent: _indent, thickness: 2, color: Colors.orange),
           
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _animateDivider,
              child: Text('Animate Divider'),
            ),
          ],
        ),
      ),
    );
  }
}
