import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2.0,
      color: Colors.white.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(vertical: 10.0)
    );
  }
}