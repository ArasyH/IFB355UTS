import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String text;
  final bool isProtected;
  final TextEditingController controller;
  const Field({
    super.key,
    required this.text,
    required this.isProtected,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: TextField(
              obscureText: isProtected,
              controller: controller,
              decoration: InputDecoration(
                  hintText: text,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20)),
            ),
          )
        ],
      ),
    );
  }
}
