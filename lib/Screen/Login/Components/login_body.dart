import 'package:flutter/material.dart';
import 'package:utsmobile2023/Components/btnRounded.dart';
import 'package:utsmobile2023/Screen/Home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Components/textField.dart';

TextEditingController controllerInUser = new TextEditingController();
TextEditingController controllerInPass = new TextEditingController();

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(100),
          margin: EdgeInsets.symmetric(vertical: 80),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "Welcome to",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                "Bekerdja",
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            padding: EdgeInsets.all(20),
            height: 420,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Form(),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: LoginBtn(context),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget Form() {
  return Column(
    children: [
      Field(
        text: "username",
        isProtected: false,
        controller: controllerInUser,
      ),
      Field(
        text: "password",
        isProtected: true,
        controller: controllerInPass,
      ),
    ],
  );
}

Widget LoginBtn(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElvRoundedBtn(
          text: "Login",
          btnColor: Colors.greenAccent,
          txtColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 50,
          rounded: 10,
          press: () {
            if (controllerInUser.text == "arasyaci" &&
                controllerInPass.text == "test") {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return homePage();
                },
              ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Username/Password anda salah")));
            }
          },
        )
      ],
    ),
  );
}
