import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding: EdgeInsets.all(24),child: registerForm,)
      ),
    );
  }
}

Widget registerForm = Container(
  child: Column(
    children: [
      Image.asset('assets/images/leaf-icon-register-screen.png'),
      Text('CREATE ACCOUNT'),
      Form(
        key: null,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            TextFormField(),
            TextFormField(),
          ],
        ),
      )
    ],
  ),
);
