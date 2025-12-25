import 'package:flutter/material.dart';


class SampleTimePicker extends StatefulWidget {
  const SampleTimePicker({super.key});


  @override
  State<SampleTimePicker> createState() => _SampleTimePickerState();
}


class _SampleTimePickerState extends State<SampleTimePicker> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay _alarmTime = TimeOfDay(hour: 7, minute: 30);
  TimeOfDay _meetingTime = TimeOfDay(hour: 14, minute: 0);


  Future<void> _selectTime(BuildContext context, String type) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: type == 'main' ? _selectedTime :
                   type == 'alarm' ? _alarmTime : _meetingTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: type == 'main' ? Colors.blue :
                      type == 'alarm' ? Colors.orange : Colors.green,
            ),
          ),
          child: child!,
        );
      },
    );
   
    if (picked != null) {
      setState(() {
        if (type == 'main') _selectedTime = picked;
        else if (type == 'alarm') _alarmTime = picked;
        else _meetingTime = picked;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimePicker Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.access_time, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text('Time Selection', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
           
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.schedule, color: Colors.blue),
                      title: Text('Current Time'),
                      subtitle: Text(_selectedTime.format(context)),
                      trailing: ElevatedButton(
                        onPressed: () => _selectTime(context, 'main'),
                        child: Text('Select'),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.alarm, color: Colors.orange),
                      title: Text('Alarm Time'),
                      subtitle: Text(_alarmTime.format(context)),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                        onPressed: () => _selectTime(context, 'alarm'),
                        child: Text('Set Alarm'),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.meeting_room, color: Colors.green),
                      title: Text('Meeting Time'),
                      subtitle: Text(_meetingTime.format(context)),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () => _selectTime(context, 'meeting'),
                        child: Text('Schedule'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Time Format Examples:', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('24-hour: ${_selectedTime.hour}:${_selectedTime.minute.toString().padLeft(2, '0')}'),
                  Text('12-hour: ${_selectedTime.format(context)}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
