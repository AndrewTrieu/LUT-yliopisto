import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late double first = 0;
  late double second = 0;
  late String output = '0.00';
  late String _output = '0';
  late String operand = '0';
  void click(String input) {
    try {
      if (input == "Clear") {
        first = 0;
        second = 0;
        _output = '0';
        operand = '0';
      } else if (input == "+/-") {
        if (_output[0] != "-") {
          _output = "-" + _output;
        } else {
          _output = _output.substring(1);
        }
      } else if (input == "+" || input == "—" || input == "x" || input == "÷") {
        first = double.parse(output);
        operand = input;
        _output = '0';
      } else if (input == ".") {
        if (_output.contains(".")) {
          print("Decimal error.");
          return;
        } else {
          _output = _output + input;
        }
      } else if (input == "=") {
        second = double.parse(output);
        if (operand == "+") {
          _output = (first + second).toString();
        } else if (operand == "—") {
          _output = (first - second).toString();
        } else if (operand == "x") {
          _output = (first * second).toString();
        } else if (operand == "÷") {
          _output = (first / second).toString();
        }
        first = 0.0;
        second = 0.0;
        operand = "";
      } else {
        _output = _output + input;
      }

      print(_output);
      setState(() {
        output = double.parse(_output).toStringAsFixed(2);
      });
    } catch (e) {
      print(e);
      first = 0;
      second = 0;
      _output = '0';
      operand = '0';
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(
          title: Text("CALCULATOR"),
        ),
        backgroundColor: Color(0xFF1C1C1C),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 15, bottom: 10),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      output,
                      style: TextStyle(
                        fontSize: 80,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WideButton(
                    text: "Clear",
                    buttonColor: 0xFFD4D4D2,
                    fontColor: 0xFF1C1C1C,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "+/-",
                    buttonColor: 0xFFD4D4D2,
                    fontColor: 0xFF1C1C1C,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "÷",
                    buttonColor: 0xFFFF9500,
                    fontColor: 0xFFFFFFFF,
                    size: 26,
                    press: click,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "7",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "8",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "9",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "x",
                    buttonColor: 0xFFFF9500,
                    fontColor: 0xFFFFFFFF,
                    size: 26,
                    press: click,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "4",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "5",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "6",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "—",
                    buttonColor: 0xFFFF9500,
                    fontColor: 0xFFFFFFFF,
                    size: 26,
                    press: click,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "1",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "2",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "3",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "+",
                    buttonColor: 0xFFFF9500,
                    fontColor: 0xFFFFFFFF,
                    size: 26,
                    press: click,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: "0",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "00",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: ".",
                    buttonColor: 0xff505050,
                    fontColor: 0xFFFFFFFF,
                    size: 24,
                    press: click,
                  ),
                  Button(
                    text: "=",
                    buttonColor: 0xFFFF9500,
                    fontColor: 0xFFFFFFFF,
                    size: 26,
                    press: click,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final int buttonColor;
  final int fontColor;
  final double size;
  final Function press;
  const Button({
    required this.text,
    required this.buttonColor,
    required this.fontColor,
    required this.size,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
            ),
          ),
          onPressed: () {
            press(text);
          },
          color: Color(buttonColor),
          textColor: Color(fontColor),
        ),
      ),
    );
  }
}

class WideButton extends StatelessWidget {
  final String text;
  final int buttonColor;
  final int fontColor;
  final double size;
  final Function press;
  const WideButton({
    required this.text,
    required this.buttonColor,
    required this.fontColor,
    required this.size,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 170,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
            ),
          ),
          onPressed: () {
            press(text);
          },
          color: Color(buttonColor),
          textColor: Color(fontColor),
        ),
      ),
    );
  }
}
