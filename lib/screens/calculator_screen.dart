import 'package:flutter/material.dart';

import 'package:calculator_app/widgets/widgets.dart';

class CalculatorScreen extends StatelessWidget {
   
  const CalculatorScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [              
              const Expanded(child: SizedBox()),

              const SubtitleResult(text: '1000'),
              const SubtitleResult(text: 'X'),
              const SubtitleResult(text: '1000'),
              const CustomDivider(),
              const TitleResult(text: '2000'),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: 'AC',
                    backgroundColor: const Color(0xffA5A5A5),
                    onPressed: () => print('AC'),
                  ),
                  CalculatorButton( 
                    text: '+/-',
                    backgroundColor: const Color(0xffA5A5A5),
                    onPressed: () => print('+/-'),
                  ),
                  CalculatorButton( 
                    text: 'del',
                    backgroundColor: const Color(0xffA5A5A5),
                    onPressed: () => print('del'),
                  ),
                  CalculatorButton( 
                    text: '/',
                    backgroundColor: const Color(0xffF0A23B),
                    onPressed: () => print('/'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '7',
                    onPressed: () => print('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => print('8'),
                  ),
                  CalculatorButton( 
                    text: '9',
                    onPressed: () => print('9'),
                  ),
                  CalculatorButton( 
                    text: 'X',
                    backgroundColor: const Color(0xffF0A23B),
                    onPressed: () => print('X'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => print('4'),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => print('5'),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => print('6'),
                  ),
                  CalculatorButton( 
                    text: '-',
                    backgroundColor: const Color(0xffF0A23B),
                    onPressed: () => print('-'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => print('1'),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => print('2'),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => print('3'),
                  ),
                  CalculatorButton(
                    text: '+',  
                    backgroundColor: const Color(0xffF0A23B),
                    onPressed: () => print('+'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    bigSize: true,
                    onPressed: () => print('0'),
                  ),
                  CalculatorButton( 
                    text: '.', 
                    onPressed: () => print('.'),
                  ),
                  CalculatorButton( 
                    text: '=',
                    backgroundColor: const Color(0xffF0A23B),
                    onPressed: () => print('='),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      )
    );
  }
}