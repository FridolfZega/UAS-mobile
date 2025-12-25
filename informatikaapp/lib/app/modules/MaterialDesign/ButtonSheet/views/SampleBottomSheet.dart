import 'package:flutter/material.dart';


class SampleBottomSheet extends StatefulWidget {
  const SampleBottomSheet({super.key});


  @override
  State<SampleBottomSheet> createState() => _SampleBottomSheetState();
}


class _SampleBottomSheetState extends State<SampleBottomSheet> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;
  int _sheetCount = 0;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    _bounceAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _showModalBottomSheet() {
    setState(() => _sheetCount++);
    _controller.forward().then((_) => _controller.reverse());
   
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _buildBottomSheetContent(),
    );
  }


  void _showPersistentBottomSheet() {
    setState(() => _sheetCount++);
    _controller.forward().then((_) => _controller.reverse());
   
    Scaffold.of(context).showBottomSheet(
      (context) => _buildBottomSheetContent(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
  }


  Widget _buildBottomSheetContent() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 300,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          SizedBox(height: 20),
          Icon(Icons.layers, size: 60, color: Colors.purple),
          SizedBox(height: 16),
          Text('Bottom Sheet Content', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('Get Link'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet Demo'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: AnimatedBuilder(
        animation: _bounceAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _bounceAnimation.value,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.layers, size: 80, color: Colors.purple),
                  SizedBox(height: 20),
                  Text('Tap buttons to show BottomSheets', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 20),
                  Text('Count: $_sheetCount', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 40),
                  ElevatedButton.icon(
                    onPressed: _showModalBottomSheet,
                    icon: Icon(Icons.vertical_align_bottom),
                    label: Text('Modal BottomSheet'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: _showPersistentBottomSheet,
                    icon: Icon(Icons.layers),
                    label: Text('Persistent BottomSheet'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
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
