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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
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
            buttonClick('+/-');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '.',
          onPress: () {
            buttonClick('.');
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
          buttonColor: Colors.grey.shade300,
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
          buttonColor: Colors.grey.shade300,
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
          buttonColor: Colors.grey.shade300,
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
          buttonColor: Colors.grey.shade300,
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
          buttonColor: Colors.grey.shade300,
          buttonTitle: '<',
          onPress: () {
            buttonClick('<');
          },
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '+',
          onPress: () {
            buttonClick('+');
          },
        ),
      ],
    );
  }
}
