import 'package:flutter/material.dart';


class SampleDialog extends StatefulWidget {
  const SampleDialog({super.key});


  @override
  State<SampleDialog> createState() => _SampleDialogState();
}


class _SampleDialogState extends State<SampleDialog> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;
 
  int _dialogCount = 0;
  String _lastAction = 'None';


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _colorAnimation = ColorTween(begin: Colors.purple, end: Colors.blue).animate(_controller);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _onDialogShown(String action) {
    setState(() {
      _dialogCount++;
      _lastAction = action;
    });
    _controller.forward().then((_) => _controller.reverse());
  }


  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert Dialog'),
        content: Text('This is a simple alert dialog with a message.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
    _onDialogShown('Alert Dialog');
  }


  void _showConfirmDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirm Action'),
        content: Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item deleted!')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Delete'),
          ),
        ],
      ),
    );
    _onDialogShown('Confirm Dialog');
  }


  void _showCustomDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, size: 60, color: Colors.amber),
              SizedBox(height: 16),
              Text('Custom Dialog', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text('This is a custom styled dialog with rounded corners.'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Close'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Action'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    _onDialogShown('Custom Dialog');
  }


  void _showSimpleDialog() {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text('Choose Option'),
        children: [
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: Text('Option 1'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: Text('Option 2'),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: Text('Option 3'),
          ),
        ],
      ),
    );
    _onDialogShown('Simple Dialog');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Demo'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(Icons.chat_bubble_outline, size: 80, color: Colors.purple),
                  SizedBox(height: 20),
                  Text('Dialog Examples', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                 
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children: [
                        _buildDialogCard(
                          'Alert Dialog',
                          Icons.warning,
                          Colors.orange,
                          _showAlertDialog,
                        ),
                        _buildDialogCard(
                          'Confirm Dialog',
                          Icons.help_outline,
                          Colors.red,
                          _showConfirmDialog,
                        ),
                        _buildDialogCard(
                          'Custom Dialog',
                          Icons.star,
                          Colors.amber,
                          _showCustomDialog,
                        ),
                        _buildDialogCard(
                          'Simple Dialog',
                          Icons.list,
                          Colors.green,
                          _showSimpleDialog,
                        ),
                      ],
                    ),
                  ),
                 
                  SizedBox(height: 20),
                  AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: _colorAnimation.value?.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: _colorAnimation.value ?? Colors.purple),
                        ),
                        child: Column(
                          children: [
                            Text('Dialog Statistics', style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('Total Dialogs Shown: $_dialogCount'),
                            Text('Last Action: $_lastAction'),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _buildDialogCard(String title, IconData icon, Color color, VoidCallback onTap) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              SizedBox(height: 8),
              Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
