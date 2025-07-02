import 'package:flutter/material.dart';

class SwitchInput extends StatefulWidget {
  const SwitchInput({super.key});

  @override
  State<SwitchInput> createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Switch(
            value: _isOn,
            onChanged: (value) {
              setState(() {
                _isOn = value;
              });
            },
          ),
          const Text('Enable Notifications'),
        ],
      ),
    );
  }
}