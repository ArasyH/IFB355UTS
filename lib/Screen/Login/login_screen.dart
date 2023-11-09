import 'package:flutter/material.dart';
import 'package:utsmobile2023/Screen/Login/Components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.greenAccent])),
        child: LoginBody(),
      ),
    );
  }
}
