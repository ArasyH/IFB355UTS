//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:utsmobile2023/Screen/Calculator/calculator_screen.dart';
import 'package:utsmobile2023/Screen/Explore/explore_screen.dart';
import 'package:utsmobile2023/Screen/Profile/profile_screen.dart';
import 'package:utsmobile2023/Screen/Profile_edit/profileEdit_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentPage = 0;

  List pages = [
    ExplorePage(),
    ProfilePage(),
    CalculatorPage(),
    profileEditPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 25,
        title: Text(
          "Welcome",
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.exit_to_app,
            ),
          )
        ],
        toolbarHeight: 60,
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        child: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            NavigationDestination(
              icon: Icon(Icons.cases_outlined),
              label: "Lamaran",
            ),
            NavigationDestination(
              icon: Icon(Icons.calculate_outlined),
              label: "Calculator",
            ),
            NavigationDestination(
              icon: Icon(Icons.people),
              label: "Edit Profile",
            )
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}
