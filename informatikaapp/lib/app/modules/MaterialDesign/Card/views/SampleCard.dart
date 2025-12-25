import 'package:flutter/material.dart';


class SampleCard extends StatefulWidget {
  const SampleCard({super.key});


  @override
  State<SampleCard> createState() => _SampleCardState();
}


class _SampleCardState extends State<SampleCard> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _elevationAnimation;
  // ignore: unused_field
  bool _isPressed = false;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 150), vsync: this);
    _elevationAnimation = Tween<double>(begin: 4.0, end: 8.0).animate(_controller);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Demo'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            AnimatedBuilder(
              animation: _elevationAnimation,
              builder: (context, child) {
                return Card(
                  elevation: _elevationAnimation.value,
                  child: InkWell(
                    onTapDown: (_) {
                      setState(() => _isPressed = true);
                      _controller.forward();
                    },
                    onTapUp: (_) {
                      setState(() => _isPressed = false);
                      _controller.reverse();
                    },
                    onTapCancel: () {
                      setState(() => _isPressed = false);
                      _controller.reverse();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.credit_card, size: 60, color: Colors.orange),
                          SizedBox(height: 16),
                          Text('Interactive Card', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('Tap to see elevation animation'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.orange.shade50,
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.orange),
                title: Text('Card with ListTile'),
                subtitle: Text('Cards can contain various widgets'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}