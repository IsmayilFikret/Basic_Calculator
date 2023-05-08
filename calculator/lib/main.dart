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
                  '999',
                  style: TextStyle(fontSize: 34, color: Colors.grey.shade300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Container(
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  '999',
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
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '.',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '0',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '=',
          onPress: () {},
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
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '2',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '3',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '/',
          onPress: () {},
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
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '5',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '6',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '*',
          onPress: () {},
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
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '8',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '9',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '-',
          onPress: () {},
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
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: 'C',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '<',
          onPress: () {},
        ),
        MyCalculatorBuntton(
          buttonColor: Colors.grey.shade300,
          buttonTitle: '+',
          onPress: () {},
        ),
      ],
    );
  }
}
