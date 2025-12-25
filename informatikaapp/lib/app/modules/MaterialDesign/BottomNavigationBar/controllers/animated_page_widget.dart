import 'package:flutter/material.dart';
class AnimatedPageWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;


  // Ubah nama class dari _AnimatedPage menjadi AnimatedPageWidget
  const AnimatedPageWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color.withValues(alpha: 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100, color: color),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
