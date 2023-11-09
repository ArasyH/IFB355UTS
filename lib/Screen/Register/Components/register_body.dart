import 'package:flutter/material.dart';
import 'package:utsmobile2023/Components/btnRounded.dart';
import 'package:utsmobile2023/Screen/Welcome/welcome_screen.dart';
import '../../../Components/textField.dart';

TextEditingController controllerRegFull = new TextEditingController();
TextEditingController controllerRegDate = new TextEditingController();
TextEditingController controllerRegUser = new TextEditingController();
TextEditingController controllerRegPass = new TextEditingController();

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Form(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RegisterButton(context),
          )
        ],
      ),
    );
  }
}

Widget Form() {
  return Column(
    children: [
      Field(
        text: "Full Name",
        isProtected: false,
        controller: controllerRegFull,
      ),
      Field(
        text: "Birth Date",
        isProtected: false,
        controller: controllerRegDate,
      ),
      Field(
        text: "username",
        isProtected: false,
        controller: controllerRegUser,
      ),
      Field(
        text: "password",
        isProtected: true,
        controller: controllerRegPass,
      )
    ],
  );
}

Widget RegisterButton(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElvRoundedBtn(
          text: "REGISTER",
          btnColor: Colors.green,
          txtColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          rounded: 10,
          press: () {
          },
          height: 50,
        )
      ],
    ),
  );
}
