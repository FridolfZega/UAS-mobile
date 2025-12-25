import 'package:flutter/material.dart';
import 'dart:async';


class SampleCircularProgressIndicator extends StatefulWidget {
  const SampleCircularProgressIndicator({super.key});


  @override
  State<SampleCircularProgressIndicator> createState() => _SampleCircularProgressIndicatorState();
}


class _SampleCircularProgressIndicatorState extends State<SampleCircularProgressIndicator> with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _scaleController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;
 
  double _progress = 0.0;
  Timer? _timer;


  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(duration: Duration(seconds: 2), vsync: this);
    _scaleController = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
   
    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_rotationController);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.elasticOut),
    );
   
    _rotationController.repeat();
    _startProgress();
  }


  @override
  void dispose() {
    _rotationController.dispose();
    _scaleController.dispose();
    _timer?.cancel();
    super.dispose();
  }


  void _startProgress() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _progress += 0.01;
        if (_progress >= 1.0) {
          _progress = 0.0;
          _scaleController.forward().then((_) => _scaleController.reverse());
        }
      });
    });
  }


  void _resetProgress() {
    setState(() => _progress = 0.0);
    _scaleController.forward().then((_) => _scaleController.reverse());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircularProgressIndicator Demo'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(Icons.refresh, size: 80, color: Colors.indigo),
                  SizedBox(height: 20),
                  Text('Progress Indicators', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                 
                  Text('Indeterminate Progress:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 16),
                  CircularProgressIndicator(),
                 
                  SizedBox(height: 30),
                  Text('Determinate Progress:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: CircularProgressIndicator(
                          value: _progress,
                          strokeWidth: 8,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                        ),
                      ),
                      Text('${(_progress * 100).toInt()}%', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Text('Custom Styled:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                      CircularProgressIndicator(
                        strokeWidth: 6,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      CircularProgressIndicator(
                        strokeWidth: 10,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Text('Animated Rotation:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 16),
                  AnimatedBuilder(
                    animation: _rotationAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _rotationAnimation.value * 2 * 3.14159,
                        child: CircularProgressIndicator(
                          value: 0.7,
                          strokeWidth: 6,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                        ),
                      );
                    },
                  ),
                 
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: _resetProgress,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                    child: Text('Reset Progress'),
                  ),
                 
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Progress: ${(_progress * 100).toStringAsFixed(1)}%'),
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
