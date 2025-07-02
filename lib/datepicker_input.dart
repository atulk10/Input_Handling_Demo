import 'package:flutter/material.dart';

class DatePickerInput extends StatefulWidget {
  const DatePickerInput({super.key});

  @override
  State<DatePickerInput> createState() => _DatePickerInputState();
}

class _DatePickerInputState extends State<DatePickerInput> {
  DateTime? _selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),

    );
    if (picked != null ) {
      setState(() {
        _selectedDate = picked;
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
            child: Text(_selectedDate == null
                ? 'No date selected'
                : 'Selected: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
            ),
          ),
          ElevatedButton(
            onPressed: () => _pickDate(context),
            child: const Text('Pick Date'),
          ),
        ],
      ),
    );
  }
}