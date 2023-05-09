import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String screenDisplay = '';
  String result = '';

  String operations = '';

  void buttonClick(String btnVal) {
    if (btnVal == 'C') {
      screenDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnVal == 'AC') {
      screenDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == '*' ||
        btnVal == '/') {
      firstNum = int.parse(screenDisplay);
      result = '';
      operations = btnVal;
    } else if (btnVal == '00') {
      result = (screenDisplay.toString() + ('00').toString());
    } else if (btnVal == '<') {
      result = screenDisplay.substring(0, screenDisplay.length - 1);
    } else if (btnVal == '=') {
      secondNum = int.parse(screenDisplay);
      if (operations == '+') {
        result = (firstNum! + secondNum!).toString();
        history =
            firstNum.toString() + operations.toString() + secondNum.toString();
      }
      if (operations == '-') {
        result = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operations.toString() + secondNum.toString();
      }
      if (operations == '*') {
        result = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operations.toString() + secondNum.toString();
      }
      if (operations == '/') {
        result = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operations.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(screenDisplay + btnVal).toString();
    }
    setState(() {
      screenDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: const Text('CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Container(
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  history,
                  style: TextStyle(fontSize: 34, color: Colors.grey.shade300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Container(
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  screenDisplay,
                  style: TextStyle(fontSize: 52, color: Colors.white),
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
            ),
            _myRowButton1(),
            _myRowButton2(),
            _myRowButton3(),
            _myRowButton4(),
            _myRowButton5(),
          ],
        ),
      ),
    );
  }

  Widget _myRowButton5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '+/-',
          onPress: () {
            return;
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '00',
          onPress: () {
            buttonClick('00');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '0',
          onPress: () {
            buttonClick('0');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '=',
          onPress: () {
            buttonClick('=');
          },
        ),
      ],
    );
  }

  Widget _myRowButton4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '1',
          onPress: () {
            buttonClick('1');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '2',
          onPress: () {
            buttonClick('2');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '3',
          onPress: () {
            buttonClick('3');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '/',
          onPress: () {
            buttonClick('/');
          },
        ),
      ],
    );
  }

  Widget _myRowButton3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '4',
          onPress: () {
            buttonClick('4');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '5',
          onPress: () {
            buttonClick('5');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '6',
          onPress: () {
            buttonClick('6');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '*',
          onPress: () {
            buttonClick('*');
          },
        ),
      ],
    );
  }

  Widget _myRowButton2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '7',
          onPress: () {
            buttonClick('7');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '8',
          onPress: () {
            buttonClick('8');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '9',
          onPress: () {
            buttonClick('9');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '-',
          onPress: () {
            buttonClick('-');
          },
        ),
      ],
    );
  }

  Widget _myRowButton1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: 'AC',
          onPress: () {
            buttonClick('AC');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: 'C',
          onPress: () {
            buttonClick('C');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '<',
          onPress: () {
            buttonClick('<');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.amber.shade300,
          buttonTitle: '+',
          onPress: () {
            buttonClick('+');
          },
        ),
      ],
    );
  }
}
