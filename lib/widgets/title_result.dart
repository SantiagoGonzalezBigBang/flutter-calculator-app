import 'package:flutter/material.dart';

class TitleResult extends StatelessWidget {

  const TitleResult({ 
    Key? key, 
    required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text(
        text, 
        style: const TextStyle(fontSize: 50.0)
      ),
    );
  }
}