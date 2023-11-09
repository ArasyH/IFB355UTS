import 'package:flutter/material.dart';
import 'package:utsmobile2023/Screen/Register/Components/register_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: RegisterBody(),
    );
  }
}
