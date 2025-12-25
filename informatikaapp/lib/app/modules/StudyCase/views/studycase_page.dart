import 'package:flutter/material.dart';

class StudyCasePage extends StatelessWidget {
  const StudyCasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Case'),
      ),
      body: const Center(
        child: Text(
          'Ini adalah Project StudyCase',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
