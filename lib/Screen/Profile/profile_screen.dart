import 'package:flutter/material.dart';
import 'package:utsmobile2023/Screen/Profile/Components/profile_body.dart';
import 'package:utsmobile2023/Screen/Welcome/welcome_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
