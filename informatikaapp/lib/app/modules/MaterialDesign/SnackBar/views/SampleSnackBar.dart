import 'package:flutter/material.dart';


class SampleSnackBar extends StatefulWidget {
  const SampleSnackBar({super.key});


  @override
  State<SampleSnackBar> createState() => _SampleSnackBarState();
}


class _SampleSnackBarState extends State<SampleSnackBar> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  int _snackBarCount = 0;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _showSnackBar(String message, Color color) {
    setState(() => _snackBarCount++);
    _controller.forward().then((_) => _controller.reverse());
   
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: 'UNDO',
          textColor: Colors.white,
          onPressed: () {},
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Demo'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message, size: 80, color: Colors.deepOrange),
                  SizedBox(height: 20),
                  Text('Tap buttons to show SnackBars', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 20),
                  Text('Count: $_snackBarCount', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 40),
                  ElevatedButton.icon(
                    onPressed: () => _showSnackBar('Success message!', Colors.green),
                    icon: Icon(Icons.check),
                    label: Text('Success SnackBar'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () => _showSnackBar('Warning message!', Colors.orange),
                    icon: Icon(Icons.warning),
                    label: Text('Warning SnackBar'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () => _showSnackBar('Error message!', Colors.red),
                    icon: Icon(Icons.error),
                    label: Text('Error SnackBar'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}