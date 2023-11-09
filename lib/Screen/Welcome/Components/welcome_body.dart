import 'package:flutter/material.dart';
import 'package:utsmobile2023/Components/btnRounded.dart';
import 'package:utsmobile2023/Screen/Login/login_screen.dart';
import 'package:utsmobile2023/Screen/Register/register_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.green,
        Colors.greenAccent,
      ], begin: Alignment.topCenter)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: TopLogo(context),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BtmBtn(context),
          )
        ],
      ),
    );
  }
}

Widget TopLogo(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.white,
              ),
              child: Icon(
                Icons.badge,
                color: Colors.green,
                size: 100,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  'WORK BRUH',
                  style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ));
}

Widget BtmBtn(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          child: Text(
            "Bekerdja",
            style: GoogleFonts.pacifico(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        OtlRoundedBtn(
          text: 'Already Member',
          otlColor: BorderSide(color: Colors.white),
          txtColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          rounded: 20,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return LoginPage();
              }),
            );
          },
        ),
        ElvRoundedBtn(
          text: 'Get Started',
          btnColor: Colors.white,
          txtColor: Colors.green,
          width: MediaQuery.of(context).size.width,
          height: 60,
          rounded: 20,
          press: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return RegisterPage();
              },
            ));
          },
        ),
      ],
    ),
  );
}
