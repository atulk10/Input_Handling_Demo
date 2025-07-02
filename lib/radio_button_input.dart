import 'package:flutter/material.dart';

enum Gender { male, female }

class RadioButtonInput extends StatefulWidget {
  const RadioButtonInput({super.key});

  @override
  State<RadioButtonInput> createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioButtonInput> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Radio<Gender>(
            value: Gender.male,
            groupValue: _selectedGender,
            onChanged: (Gender? value) {
              setState(() {
                _selectedGender = value;
              });
            },
          ),
          const Text('Male'),
          Radio<Gender>(
            value: Gender.female,
            groupValue: _selectedGender,
            onChanged: (Gender? value) {
              setState(() {
                _selectedGender = value;
              });
            },
          ),
          const Text('Female'),
        ],
      ),
    );
  }
}