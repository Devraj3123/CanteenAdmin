// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final void Function()? onpress;
  const Custombutton({
    super.key,
    required this.text,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 200,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
