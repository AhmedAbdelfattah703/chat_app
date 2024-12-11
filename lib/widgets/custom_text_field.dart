import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,required this.hintText
  });
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
       cursorRadius: Radius.circular(30),
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.blue,
        )),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}