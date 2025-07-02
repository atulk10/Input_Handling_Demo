import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({super.key});

  @override
  State<CheckboxInput> createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = value ?? false;
              });
            },
          ),
          const Text('Accept Terms'),
        ],
      ),
    );
  }
}