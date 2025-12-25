import 'package:flutter/material.dart';
import 'dart:async';


class SampleLinearProgressIndicator extends StatefulWidget {
  const SampleLinearProgressIndicator({super.key});


  @override
  State<SampleLinearProgressIndicator> createState() => _SampleLinearProgressIndicatorState();
}


class _SampleLinearProgressIndicatorState extends State<SampleLinearProgressIndicator> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;
 
  double _progress = 0.0;
  Timer? _timer;
  bool _isAnimating = false;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.green).animate(_controller);
    _startProgress();
  }


  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }


  void _startProgress() {
    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        _progress += 0.01;
        if (_progress >= 1.0) {
          _progress = 0.0;
          _controller.forward().then((_) => _controller.reverse());
        }
      });
    });
  }


  void _toggleAnimation() {
    setState(() => _isAnimating = !_isAnimating);
    if (_isAnimating) {
      _startProgress();
    } else {
      _timer?.cancel();
    }
  }


  void _resetProgress() {
    setState(() => _progress = 0.0);
    _controller.forward().then((_) => _controller.reverse());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator Demo'),
        backgroundColor: Colors.blue,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.linear_scale, size: 80, color: Colors.blue),
                  SizedBox(height: 20),
                  Text('Linear Progress Indicators', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                 
                  Text('Indeterminate Progress:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  LinearProgressIndicator(),
                 
                  SizedBox(height: 30),
                  Text('Determinate Progress:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${(_progress * 100).toInt()}%'),
                      SizedBox(height: 5),
                      LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Text('Custom Styled:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      LinearProgressIndicator(
                        value: 0.3,
                        backgroundColor: Colors.red[100],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                        minHeight: 8,
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.green[100],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                        minHeight: 12,
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.9,
                        backgroundColor: Colors.purple[100],
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                        minHeight: 16,
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Text('Animated Color Progress:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) {
                      return LinearProgressIndicator(
                        value: _progress,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(_colorAnimation.value ?? Colors.blue),
                        minHeight: 10,
                      );
                    },
                  ),
                 
                  SizedBox(height: 30),
                  Text('Multiple Progress Bars:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      _buildProgressRow('Task 1', 0.8, Colors.blue),
                      SizedBox(height: 8),
                      _buildProgressRow('Task 2', 0.6, Colors.orange),
                      SizedBox(height: 8),
                      _buildProgressRow('Task 3', 0.4, Colors.green),
                      SizedBox(height: 8),
                      _buildProgressRow('Task 4', 0.2, Colors.red),
                    ],
                  ),
                 
                  SizedBox(height: 30),
                  Text('Controls:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _toggleAnimation,
                        child: Text(_isAnimating ? 'Pause' : 'Start'),
                      ),
                      ElevatedButton(
                        onPressed: _resetProgress,
                        child: Text('Reset'),
                      ),
                    ],
                  ),
                 
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Text('Progress Info', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('Current: ${(_progress * 100).toStringAsFixed(1)}%'),
                        Text('Status: ${_isAnimating ? "Running" : "Paused"}'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _buildProgressRow(String label, double value, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(label, style: TextStyle(fontSize: 12)),
        ),
        Expanded(
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: color.withOpacity(0.2),
            valueColor: AlwaysStoppedAnimation<Color>(color),
            minHeight: 6,
          ),
        ),
        SizedBox(width: 8),
        Text('${(value * 100).toInt()}%', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
