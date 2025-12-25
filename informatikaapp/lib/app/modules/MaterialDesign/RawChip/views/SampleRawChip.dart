import 'package:flutter/material.dart';


class SampleRawChip extends StatefulWidget {
  @override
  State<SampleRawChip> createState() => _SampleRawChipState();
}


class _SampleRawChipState extends State<SampleRawChip> {
  bool _isSelected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RawChip')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Basic RawChip'),
            SizedBox(height: 10),
            RawChip(
              label: Text('Basic Chip'),
              onPressed: () => print('Basic chip pressed'),
            ),
            SizedBox(height: 20),
            Text('RawChip with Avatar'),
            SizedBox(height: 10),
            RawChip(
              avatar: CircleAvatar(child: Text('A')),
              label: Text('Avatar Chip'),
              onPressed: () => print('Avatar chip pressed'),
            ),
            SizedBox(height: 20),
            Text('Selectable RawChip'),
            SizedBox(height: 10),
            RawChip(
              label: Text('Selectable'),
              selected: _isSelected,
              onSelected: (selected) => setState(() => _isSelected = selected),
              selectedColor: Colors.blue[100],
            ),
            SizedBox(height: 20),
            Text('RawChip with Delete'),
            SizedBox(height: 10),
            RawChip(
              label: Text('Deletable'),
              onDeleted: () => print('Chip deleted'),
              deleteIcon: Icon(Icons.close),
            ),
            SizedBox(height: 20),
            Text('Custom Styled RawChip'),
            SizedBox(height: 10),
            RawChip(
              label: Text('Custom'),
              backgroundColor: Colors.orange[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.orange),
              ),
              onPressed: () => print('Custom chip pressed'),
            ),
          ],
        ),
      ),
    );
  }
}
