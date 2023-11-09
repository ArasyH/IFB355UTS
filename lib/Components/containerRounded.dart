import 'package:flutter/material.dart';

class RoundedBoxWhite extends StatelessWidget {
  final Column Content;
  const RoundedBoxWhite({super.key, required this.Content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: Colors.black.withOpacity(.1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [Content],
        ),
      ),
    );
  }
}

class RoundedBoxGrd extends StatelessWidget {
  final Column Content;
  final LinearGradient grdColor;
  final Color shdColor;
  const RoundedBoxGrd({
    super.key,
    required this.Content,
    required this.grdColor,
    required this.shdColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(offset: Offset(4, 4), blurRadius: 10, color: shdColor)
        ], borderRadius: BorderRadius.circular(20), gradient: grdColor),
        child: Content,
      ),
    );
  }
}
