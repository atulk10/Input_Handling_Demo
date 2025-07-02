import 'package:flutter/material.dart';

class TimePickerInput extends StatefulWidget {
  const TimePickerInput({super.key});

  @override
  State<TimePickerInput> createState() => _TimePickerInputState();
}

class _TimePickerInputState extends State<TimePickerInput> {
  TimeOfDay? _selectedTime;

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(_selectedTime == null
                ? 'No time selected'
                : 'Selected: ${_selectedTime!.format(context)}'),
          ),
          ElevatedButton(
            onPressed: () {
              _pickTime(context);
            },
            child: const Text('Pick Time'),
          ),
        ],
      ),
    );
  }
}