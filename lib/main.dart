import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utsmobile2023/Screen/Calculator/calculator_screen.dart';
import 'package:utsmobile2023/Screen/Explore/explore_screen.dart';
import 'package:utsmobile2023/Screen/Home/home_screen.dart';
import 'package:utsmobile2023/Screen/Login/login_screen.dart';
import 'package:utsmobile2023/Screen/Profile/profile_screen.dart';
import 'package:utsmobile2023/Screen/Profile_edit/profileEdit_screen.dart';
import 'package:utsmobile2023/Screen/Register/register_screen.dart';
import 'package:utsmobile2023/Screen/Welcome/welcome_screen.dart';

void main() {
  runApp(const ProfileBook());
}

class ProfileBook extends StatelessWidget {
  const ProfileBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UTS 2023",
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white70,
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        fontFamily:
        GoogleFonts.urbanist(fontWeight: FontWeight.w500).fontFamily,
      ),
      home: WelcomePage(),
    );
  }
}
