import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.title,
      TextInputType? this.inputType,
      required this.controller,
      bool? this.obscureText})
      : super(key: key);
  final String title;
  final inputType;
  final TextEditingController controller;
  final obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        border: const OutlineInputBorder(),
      ),
      keyboardType: inputType ?? TextInputType.name,
      controller: controller,
      
      obscureText: obscureText ?? false,
      validator: (value) {
        if (value!.isEmpty) {
          return "invalid field";
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          controller.text = value;
          // print(value);
        }
      },
    );
  }
}
