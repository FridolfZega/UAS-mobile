import 'package:flutter/material.dart';


class SampleChip extends StatefulWidget {
  const SampleChip({super.key});


  @override
  State<SampleChip> createState() => _SampleChipState();
}


class _SampleChipState extends State<SampleChip> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;
 
  bool _isSelected = false;
  List<String> _selectedFilters = ['Flutter'];
  List<String> _availableFilters = ['Flutter', 'Dart', 'Mobile', 'Web', 'Desktop'];


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.green).animate(_controller);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _onChipTap() {
    _controller.forward().then((_) => _controller.reverse());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Demo'),
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
                  Icon(Icons.label, size: 80, color: Colors.blue),
                  SizedBox(height: 20),
                  Text('Interactive Chips', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                 
                  Text('Basic Chip:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Chip(
                    avatar: CircleAvatar(child: Text('F')),
                    label: Text('Flutter'),
                    onDeleted: () => _onChipTap(),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Action Chip:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  ActionChip(
                    avatar: Icon(Icons.add),
                    label: Text('Add Item'),
                    onPressed: () => _onChipTap(),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Choice Chip:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) {
                      return ChoiceChip(
                        label: Text('Selected'),
                        selected: _isSelected,
                        selectedColor: _colorAnimation.value,
                        onSelected: (selected) {
                          setState(() => _isSelected = selected);
                          _onChipTap();
                        },
                      );
                    },
                  ),
                 
                  SizedBox(height: 20),
                  Text('Filter Chips:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: _availableFilters.map((filter) {
                      return FilterChip(
                        label: Text(filter),
                        selected: _selectedFilters.contains(filter),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              _selectedFilters.add(filter);
                            } else {
                              _selectedFilters.remove(filter);
                            }
                          });
                          _onChipTap();
                        },
                      );
                    }).toList(),
                  ),
                 
                  SizedBox(height: 20),
                  Text('Input Chip:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: _selectedFilters.map((filter) {
                      return InputChip(
                        label: Text(filter),
                        onDeleted: () {
                          setState(() => _selectedFilters.remove(filter));
                          _onChipTap();
                        },
                        deleteIcon: Icon(Icons.close),
                      );
                    }).toList(),
                  ),
                 
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text('Selected: ${_selectedFilters.join(', ')}'),
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
