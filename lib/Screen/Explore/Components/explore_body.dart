import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:utsmobile2023/Components/textStyling.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: EdgeInsets.symmetric(horizontal: 25),
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              containerInfo(text: "Hasil Pencarian"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Cards(),
                    Cards(),
                    Cards(),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 8),
                color: Colors.black.withOpacity(.1),
                blurRadius: 20,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(children: [
                  Text("JOB TITLE"),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Text("Deskripsi jobdesk")
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
