import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int firstNum;
    int secondNum = 0;
    String history = '';
    String? textToDisplay = '';
    String? result;
    String? operation;

    void butOnClick(String btnVal) {
      if (btnVal == 'C') {
        firstNum = 0;
        secondNum = 0;
        textToDisplay = '';
        result = '';
      } else if (btnVal == 'AC') {
        firstNum = 0;
        secondNum = 0;
        textToDisplay = '';
        result = '';
        history = '';
      } else if (btnVal == '+' ||
          btnVal == '-' ||
          btnVal == '*' ||
          btnVal == '/') {
        firstNum = int.parse(textToDisplay!);
        result = '';
        operation = btnVal;
      } else if (btnVal == '=') {
        firstNum = int.parse(textToDisplay!);
        if (operation == '+') {
          result = (firstNum + secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == '-') {
          result = (firstNum - secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == 'X') {
          result = (firstNum * secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == '/') {
          result = (firstNum / secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
      } else {
        result = int.parse(textToDisplay! + btnVal).toString();
      }
      setState(() {
        textToDisplay = result;
      });
    }

    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color(0xFF28527a),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Container(
                    alignment: Alignment(1.0, 1.0),
                    child: Text(
                      history,
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Color(0x66FFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    alignment: const Alignment(1.0, 1.0),
                    child: Text(
                      textToDisplay.toString(),
                      style: GoogleFonts.rubik(
                        textStyle:
                            const TextStyle(fontSize: 48, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CaltulatorButton(
                        onPress: () {
                          butOnClick('AC');
                        },
                        text: 'AC',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: 'C',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '<',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '/',
                        textSize: 24,
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CaltulatorButton(
                        onPress: () {},
                        text: '9',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '8',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '7',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: 'X',
                        textSize: 24,
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CaltulatorButton(
                        onPress: () {},
                        text: '6',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '5',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '4',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '-',
                        textSize: 24,
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CaltulatorButton(
                        onPress: () {},
                        text: '3',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '2',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '1',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '+',
                        textSize: 24,
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CaltulatorButton(
                        onPress: () {},
                        text: '+/-',
                        textSize: 22,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '0',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '00',
                        textSize: 24,
                      ),
                      CaltulatorButton(
                        onPress: () {},
                        text: '=',
                        textSize: 24,
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
