import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput({super.key});

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String? _selectedValue;
  final List<String> _options = ['Java', 'Flutter', 'Python'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Select Language',
          border: OutlineInputBorder(),
        ),
        value: _selectedValue,
        items: _options
            .map((option) => DropdownMenuItem(
          value: option,
          child: Text(option),
        ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}