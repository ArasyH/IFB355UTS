import 'package:flutter/material.dart';

class ElvRoundedBtn extends StatelessWidget {
  final String text;
  final Color btnColor;
  final Color txtColor;
  final double width;
  final double height;
  final double rounded;
  final VoidCallback press;
  const ElvRoundedBtn({
    required this.text,
    required this.txtColor,
    required this.btnColor,
    required this.width,
    required this.height,
    required this.rounded,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded),
            ),
            backgroundColor: btnColor,
            foregroundColor: txtColor,
            elevation: 0,
          ),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}

class ElvRoundedBtnGrd extends StatelessWidget {
  final String text;
  // final Color btnGrdColor;
  final Color txtColor;
  final double width;
  final double height;
  final double rounded;
  final VoidCallback press;
  const ElvRoundedBtnGrd({
    required this.text,
    // required this.btnGrdColor,
    required this.width,
    required this.height,
    required this.rounded,
    required this.press,
    super.key,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(rounded),
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.blue,
            ])),
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded),
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: txtColor,
            elevation: 0,
          ),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}

class OtlRoundedBtn extends StatelessWidget {
  final String text;
  final BorderSide otlColor;
  final Color txtColor;
  final double width;
  final double rounded;
  final VoidCallback press;
  const OtlRoundedBtn({
    required this.text,
    required this.otlColor,
    required this.txtColor,
    required this.width,
    required this.rounded,
    required this.press,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Container(
        width: width,
        child: OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(rounded),
            ),
            side: otlColor,
            foregroundColor: txtColor,
            elevation: 0,
          ),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
