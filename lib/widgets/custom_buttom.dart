import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, 
   required this.TextName
  });
String TextName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 55,
      child: Center(
        child: Text(
          TextName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
