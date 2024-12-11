import 'package:chat_app/widgets/custom_buttom.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
           const  SizedBox(height: 60,),
            Image.asset('assets/images/scholar.png'),
           const  Text(
              'Our Chat',
              style: TextStyle(fontSize: 32, fontFamily: "Pacifico"),
            ),
           const  SizedBox(height: 60,),
           const  Row(
              children: [
                Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
           const  SizedBox(height: 20,),
            CustomTextField(
              hintText: 'Email',
            ),
           const  SizedBox(height: 10,),
            CustomTextField(
              hintText: 'Password',
            ),
           const  SizedBox(height: 30,),
            CustomButton(TextName: 'Register',),
             Row(children: [
              const Text("Already have an account?"),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Text("   Login",style: TextStyle(fontWeight: FontWeight.bold),))
            ],)
          ],
        ),
      ),
    );
  }
}