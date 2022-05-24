import 'package:get/get.dart';

class CalculatorController extends GetxController {

  RxString firstNumber  = '10'.obs;
  RxString secondNumber = '20'.obs;
  RxString mathResult   = '30'.obs;
  RxString operation    = '+'.obs;

  void resetAll() {    
    firstNumber.value  = '0';
    secondNumber.value = '0';
    mathResult.value   = '0';
    operation.value    = '+';
  }

  void changeNegativePositive() {
    if (mathResult.startsWith('-')) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-${mathResult.value}';
    }
  }

  void addNumber(String value) {
    if (mathResult.value == '0') {
      mathResult.value = value;    
      return;
    }

    if (mathResult.value == '-0') {
      mathResult.value = '-$value';
      return;
    }

    mathResult.value = mathResult.value + value;
  }

  void addDecimalPoint() {
    if (mathResult.contains('.')) return;

    if (mathResult.startsWith('0')) {
      mathResult.value = '0.';
    } else {
      mathResult.value = '${mathResult.value}.';
    }
  }

  void selectOperation(String value) {
    operation.value   = value;
    firstNumber.value = mathResult.value;
    mathResult.value  = '0';
  }

  void deleteLastEntry() {
    if (mathResult.value.replaceAll('-', '').length > 1) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length - 1);
    } else {
      mathResult.value = '0';
    }
  }

  void calculateResult() {
    double num1 = double.parse(firstNumber.value);   
    double num2 = double.parse(mathResult.value);
    
    secondNumber.value = mathResult.value;

    switch (operation.value) {
      case '+':
        mathResult.value = '${num1 + num2}';
        break;
      case '-':      
        mathResult.value = '${num1 - num2}';
        break;
      case '/':      
        mathResult.value = '${num1 / num2}';
        break;
      case 'X':
        mathResult.value = '${num1 * num2}';
        break;
      default: 
        break;
    }

    if (mathResult.endsWith('.0')) {
      mathResult.value = mathResult.substring(0, mathResult.value.length - 2);
    }
  }

}