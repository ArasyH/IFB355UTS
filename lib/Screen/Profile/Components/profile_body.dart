import 'package:flutter/material.dart';
import 'package:utsmobile2023/Components/containerRounded.dart';
import 'package:utsmobile2023/Components/textStyling.dart';
import 'package:utsmobile2023/Screen/Profile_edit/Components/profileEdit_body.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Content(context),
      ],
    );
  }
}

Widget Content(context) {
  return Container(
    child: Column(
      children: [
        // Profile
        RoundedBoxGrd(
          Content: Column(
            children: [Profile()],
          ),
          grdColor: LinearGradient(colors: [Colors.green, Colors.greenAccent]),
          shdColor: Colors.green.withOpacity(.5),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        // Biodata
        containerInfo(text: "Biodata"),
        RoundedBoxWhite(
            Content: Column(
          children: [Bio()],
        )),
        // History
        containerInfo(text: "History"),
        RoundedBoxWhite(
            Content: Column(
          children: [History()],
        )),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        // Lamaran
        containerInfo(text: "Lamaran"),
        RoundedBoxGrd(
          Content: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Lamaran",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          grdColor: LinearGradient(colors: [Colors.green, Colors.greenAccent]),
          shdColor: Colors.blue.withOpacity(.5),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
        // Approval
        containerInfo(text: "Approval Status"),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      color: Colors.amber.withOpacity(.5))
                ],
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.amber[700]!, Colors.amber[500]!])),
            child: Text(
              "Pending",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Profile() {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.only(right: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(200)),
          height: 60,
          width: 60,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Halo Pekerdja!",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 17),
          ),
          Text(
            hasilNama,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      )
    ],
  );
}

Widget Bio() {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hasilGender,
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      )
    ],
  );
}

Widget History() {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hasilJurusan,
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      )
    ],
  );
}
