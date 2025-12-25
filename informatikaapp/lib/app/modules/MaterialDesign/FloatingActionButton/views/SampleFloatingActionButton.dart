import 'package:flutter/material.dart';


class SampleFloatingActionButton extends StatefulWidget {
  const SampleFloatingActionButton({super.key});


  @override
  State<SampleFloatingActionButton> createState() => _SampleFloatingActionButtonState();
}


class _SampleFloatingActionButtonState extends State<SampleFloatingActionButton> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  int _counter = 0;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _incrementCounter() {
    setState(() => _counter++);
    _controller.forward().then((_) => _controller.reverse());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton Demo'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.touch_app, size: 80, color: Colors.pink),
            SizedBox(height: 20),
            Text('Tap the floating button!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            AnimatedBuilder(
              animation: _scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Text(
                    '$_counter',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.pink),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
      ),
    );
  }
}
