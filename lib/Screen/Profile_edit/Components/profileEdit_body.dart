import 'dart:io';

import 'package:flutter/material.dart';
import 'package:utsmobile2023/Components/btnRounded.dart';
import 'package:utsmobile2023/Components/textField.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Components/containerRounded.dart';
import '../../../Components/textStyling.dart';

TextEditingController controllerNama = new TextEditingController();
TextEditingController controllerPass = new TextEditingController();
String hasilNama = "";
String hasilPass = "";
String hasilGender = "";
String hasilJurusan = "";

bool ITENAS = false;

class profileEditBody extends StatefulWidget {
  const profileEditBody({super.key});

  @override
  State<profileEditBody> createState() => _profileEditBodyState();
}

class _profileEditBodyState extends State<profileEditBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        containerInfo(text: "Profile Info"),
        RoundedBoxWhite(
            Content: Column(
          children: [profileInfo()],
        )),
        containerInfo(text: "History"),
        RoundedBoxWhite(
            Content: Column(
          children: [History()],
        )),
        ElvRoundedBtn(
          text: "SUBMIT",
          btnColor: Colors.greenAccent,
          txtColor: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: 45,
          rounded: 10,
          press: () {
            setState(() {
              hasilNama = controllerNama.text;
              hasilPass = controllerPass.text;
              hasilGender = _gender!;
              hasilJurusan = dropdownValue;
            });
          },
        )
      ],
    );
  }
}

String? _gender = "";

class profileInfo extends StatefulWidget {
  const profileInfo({super.key});

  @override
  State<profileInfo> createState() => _profileInfoState();
}

class _profileInfoState extends State<profileInfo> {
  File? image;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  void _pilihGender(String? value) {
    setState(() {
      _gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image != null
            ? Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(150),
                    child: Image.file(image!),
                  ),
                ),
              )
            : Container(),
        OtlRoundedBtn(
          text: "Browse",
          txtColor: Colors.green,
          otlColor: BorderSide(color: Colors.green),
          width: MediaQuery.of(context).size.width,
          rounded: 20,
          press: () async {
            await getImage();
          },
        ),
        Field(
          text: "Username",
          isProtected: false,
          controller: controllerNama,
        ),
        Field(
          text: "Password",
          isProtected: true,
          controller: controllerPass,
        ),
        RadioListTile(
          title: Text("Pria"),
          value: "Laki - laki",
          groupValue: _gender,
          onChanged: (String? value) {
            _pilihGender(value);
          },
        ),
        RadioListTile(
          title: Text("Wanita"),
          value: "Wanita",
          groupValue: _gender,
          onChanged: (String? value) {
            _pilihGender(value);
          },
        ),
      ],
    );
  }
}

const List<String> list = <String>[
  'Informatika',
  'Sistem Informasi',
  'Teknik Sipil',
  'Teknik Elektro',
  'Teknik Industri'
];

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

String dropdownValue = list.first;

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          value: dropdownValue,
          elevation: 16,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
