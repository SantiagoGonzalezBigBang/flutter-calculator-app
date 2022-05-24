import 'package:flutter/material.dart';

class SubtitleResult extends StatelessWidget {

  const SubtitleResult({
    Key? key, 
    required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        text, 
        style: const TextStyle(fontSize: 30)
      ),
    );
  }
}