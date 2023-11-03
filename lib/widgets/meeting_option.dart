import 'package:flutter/material.dart';
import 'package:video_call/utils/colors.dart';

class MeetingOption extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const MeetingOption({super.key, required this.text, required this.onChange, required this.isMute});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Switch.adaptive(value: isMute, onChanged: onChange,),
        ],
      ),
    );
  }
}
