import 'package:calculator_app/controllers/controllers.dart';
import 'package:calculator_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResults extends StatelessWidget {
  MathResults({Key? key}) : super(key: key);

  final calculatorController = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    

    return Obx((
      () => Column(
        children: [
          SubtitleResult(text: '${calculatorController.firstNumber}'),
          SubtitleResult(text: '${calculatorController.operation}'),
          SubtitleResult(text: '${calculatorController.secondNumber}'),
          const CustomDivider(),
          TitleResult(text: '${calculatorController.mathResult}'),
        ],
      )
    ));
  }
}