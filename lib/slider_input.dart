import 'package:flutter/material.dart';

class SliderInput extends StatefulWidget {
  const SliderInput({super.key});

  @override
  State<SliderInput> createState() => _SliderInputState();
}

class _SliderInputState extends State<SliderInput> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('slider'),
          Slider(
            value: _value,
            min: 50,
            max: 100,
            divisions: 30,
            label: _value.round().toString(),
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
         // Text('Value: ${_value.round()}'),
        ],
      ),
    );
  }
}