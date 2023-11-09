import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containerInfo extends StatelessWidget {
  final String text;
  const containerInfo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          color: Colors.grey,
        ),
      ),
    );
  }
}
