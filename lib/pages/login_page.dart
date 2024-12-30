import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_buttom.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            
            Image.asset('assets/images/scholar.png',height: 100,),
            Center(
              child: const Text(
                'Our Chat',
                style: TextStyle(fontSize: 32, fontFamily: "Pacifico"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              TextName: 'LOGIN',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text("Don't have an account?"),
                GestureDetector(
                  child: const Text(
                    "   Register",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return  RegisterPage();
                    }),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
