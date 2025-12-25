import 'package:flutter/material.dart';


class SampleDatePicker extends StatefulWidget {
  const SampleDatePicker({super.key});


  @override
  State<SampleDatePicker> createState() => _SampleDatePickerState();
}


class _SampleDatePickerState extends State<SampleDatePicker> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;
 
  DateTime? _selectedDate;
  DateTimeRange? _selectedRange;
  TimeOfDay? _selectedTime;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.green).animate(_controller);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _onDateSelected() {
    _controller.forward().then((_) => _controller.reverse());
  }


  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
      _onDateSelected();
    }
  }


  Future<void> _selectDateRange() async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      initialDateRange: _selectedRange,
    );
    if (picked != null) {
      setState(() => _selectedRange = picked);
      _onDateSelected();
    }
  }


  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() => _selectedTime = picked);
      _onDateSelected();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker Demo'),
        backgroundColor: Colors.blue,
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
                  Icon(Icons.calendar_today, size: 80, color: Colors.blue),
                  SizedBox(height: 20),
                  Text('Date & Time Pickers', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                 
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.calendar_today, color: Colors.blue),
                            title: Text('Select Date'),
                            subtitle: Text(_selectedDate?.toString().split(' ')[0] ?? 'No date selected'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: _selectDate,
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.date_range, color: Colors.green),
                            title: Text('Select Date Range'),
                            subtitle: Text(_selectedRange != null
                              ? '${_selectedRange!.start.toString().split(' ')[0]} - ${_selectedRange!.end.toString().split(' ')[0]}'
                              : 'No range selected'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: _selectDateRange,
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.access_time, color: Colors.orange),
                            title: Text('Select Time'),
                            subtitle: Text(_selectedTime?.format(context) ?? 'No time selected'),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: _selectTime,
                          ),
                        ],
                      ),
                    ),
                  ),
                 
                  SizedBox(height: 30),
                  AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (context, child) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: _colorAnimation.value?.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: _colorAnimation.value ?? Colors.blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Selected Values:', style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            if (_selectedDate != null)
                              Text('Date: ${_selectedDate!.toString().split(' ')[0]}'),
                            if (_selectedRange != null)
                              Text('Range: ${_selectedRange!.duration.inDays + 1} days'),
                            if (_selectedTime != null)
                              Text('Time: ${_selectedTime!.format(context)}'),
                            if (_selectedDate == null && _selectedRange == null && _selectedTime == null)
                              Text('No selections made yet'),
                          ],
                        ),
                      );
                    },
                  ),
                 
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _selectDate,
                        icon: Icon(Icons.calendar_today),
                        label: Text('Date'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      ),
                      ElevatedButton.icon(
                        onPressed: _selectTime,
                        icon: Icon(Icons.access_time),
                        label: Text('Time'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      ),
                    ],
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
