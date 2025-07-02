import 'package:flutter/material.dart';
import 'package:input_fields/radio_button_input.dart';
import 'package:input_fields/slider_input.dart';
import 'package:input_fields/switch_input.dart';
import 'package:input_fields/timepicker_input.dart';

import 'checkbox_input.dart';
import 'datepicker_input.dart';
import 'dropdown_input.dart';



class InputHandlingDemo extends StatelessWidget {
  const InputHandlingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar: AppBar(title: const Text('Input Handling Demo',)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          const [
            Text('TextField:', style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(),
            SizedBox(height: 25.0,),
            CheckboxInput(),
            SizedBox(height: 25,),
            Text('Gender Select:', style: TextStyle(fontWeight: FontWeight.bold)),
            RadioButtonInput(),
            SliderInput(),
            DropdownInput(),
            SizedBox(height: 25,),
            SwitchInput(),
            Text('Please Date Pick:', style: TextStyle(fontWeight: FontWeight.bold)),
            DatePickerInput(),
            SizedBox(height: 25,),
            Text(' Select Time :', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 25,),
            TimePickerInput(),
            Divider(),


          ],
        ),
      ),
    );
  }
}