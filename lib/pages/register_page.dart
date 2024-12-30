import 'package:chat_app/widgets/custom_buttom.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
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
                  "REGISTER",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              onChanged: (data) {
                password = data;
              },
              hintText: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              onTap: () async {
                // FirebaseAuth.instance;
                try {
                  await registerUser();
                } on FirebaseAuthException catch (ex) {
                  if (ex.code == 'weak-password') {
                    showSnackBar(context,'weak password');
                  } else if (ex.code == 'email-already-in-use') {
                    showSnackBar(context, 'email already exist');
                  }
                }
                showSnackBar(context,'success' );
              },
              TextName: 'Register',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text("Already have an account?"),
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "   Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context,String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email!, password: password!);
  }
}
