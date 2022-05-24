import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {


  const CalculatorButton({
    Key? key, 
    required this.text, 
    required this.onPressed,
    this.backgroundColor = const Color(0xff333333),
    this.bigSize = false, 
  }) : super(key: key);
      
  final String text;
  final Function() onPressed;
  final Color backgroundColor;
  final bool bigSize;

  @override
  Widget build(BuildContext context) {

    final buttonStyle = TextButton.styleFrom(
      backgroundColor: backgroundColor,
      primary: Colors.white,
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only( 
        bottom: 10.0, 
        right : 5.0, 
        left  : 5.0
      ),
      child: TextButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: SizedBox(
          width: bigSize ? 150.0 : 65.0,
          height: 65.0,
          child: Center(
            child: Text(
              text,
              style: const TextStyle( 
                fontSize: 30.0, 
                fontWeight: FontWeight.w300 
              )
            )
          ),
        ),
      ),
    );
  }
}