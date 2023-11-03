import 'package:flutter/material.dart';
import 'package:video_call/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            // minimumSize: Size(80, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: const BorderSide(color: buttonColor),
            )),
      ),
    );
  }
}
