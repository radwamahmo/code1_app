import 'package:flutter/material.dart';
import 'package:new_app/calculator/calculator_widget.dart';

class Calculator extends StatefulWidget {
  static const String routeName = 'Calculator';

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String resText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        resText,
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ))),
          Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      text: '7',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '8',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '9',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '*',
                      onButtonClick: onOperatorClick,
                    ),
                    CalculatorButton(
                      text: 'X',
                      onButtonClick: onOperatorClick,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      text: '4',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '5',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '6',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '/',
                      onButtonClick: onOperatorClick,
                    ),
                    CalculatorButton(
                      text: 'C',
                      onButtonClick: onOperatorClick,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      text: '1',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '2',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '3',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '+',
                      onButtonClick: onOperatorClick,
                    ),
                    CalculatorButton(
                      text: '%',
                      onButtonClick: onOperatorClick,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CalculatorButton(
                      text: '.',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '0',
                      onButtonClick: onDigitClick,
                    ),
                    CalculatorButton(
                      text: '=',
                      onButtonClick: onEqualClick,
                    ),
                    CalculatorButton(
                      text: '-',
                      onButtonClick: onOperatorClick,
                    ),
                    CalculatorButton(
                      text: 'sqrt',
                      onButtonClick: onOperatorClick,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  void onDigitClick(String text) {
    resText += text;
    setState(() {});
  }

  String lhs = '';
  String operator = '';

  void onOperatorClick(String clickedOperator) {
    if (operator.isEmpty) {
      lhs = resText;
      operator = clickedOperator;
      resText = '';
    } else {
      String rhs = resText;
      lhs = Calculate(lhs, operator, rhs);
      operator = clickedOperator;
      resText = '';
    }
    setState(() {});
  }

  String Calculate(String lhs, String operator, String rhs) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res = 0.0;

    if (operator == '+') {
      res = num1 + num2;
    } else if (operator == '-') {
      res = num1 - num2;
    } else if (operator == '*') {
      res = num1 * num2;
    } else if (operator == '/') {
      res = num1 / num2;
    } else if (operator == 'X') {
    } else if (operator == 'C') {
    } else if (operator == '%') {
      res = num1 % num2;
    } else if (operator == 'sqrt') {
      Math.sqrt(num);
    }
    return res.toString();
  }

  void onEqualClick(String text) {
    String rhs = resText;
    resText = Calculate(lhs, operator, rhs);
    lhs = '';
    operator = '';

    setState(() {});
  }
}

class Math {
  static void sqrt(valueOf) {}
}
