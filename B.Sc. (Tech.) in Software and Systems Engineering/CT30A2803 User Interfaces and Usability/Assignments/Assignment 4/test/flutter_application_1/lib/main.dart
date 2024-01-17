import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String equa = "0";
  String resu = "0";
  String expres = "";
  double eFontSize = 28.0;
  double rFontSize = 38.0;

  buttonPress(String butText) {
    setState(
      () {
        if (butText == "C") {
          equa = "0";
          resu = "0";
          eFontSize = 28.0;
          rFontSize = 38.0;
        } else if (butText == "⌫") {
          eFontSize = 38.0;
          rFontSize = 28.0;
          equa = equa.substring(0, equa.length - 1);
          if (equa == "") {
            equa = "0";
          }
        } else if (butText == "=") {
          eFontSize = 28.0;
          rFontSize = 38.0;
        } else {
          eFontSize = 38.0;
          rFontSize = 28.0;
          if (equa == "0") {
            equa = butText;
          } else {
            equa = equa + butText;
          }
        }
      },
    );
  }

  Widget buildButton(String butText, double butHeight, Color butCol) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2 * butHeight,
      color: butCol,
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white60, width: 2, style: BorderStyle.solid)),
          padding: EdgeInsets.all(14.0),
          onPressed: () => buttonPress(butText),
          child: Text(
            butText,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Colors.white60),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(30.0),
              child: Text(
                equa,
                style: TextStyle(fontSize: eFontSize),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(30.0),
              child: Text(
                resu,
                style: TextStyle(fontSize: rFontSize),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 60,
                  child: Table(
                    children: [
                      TableRow(children: [
                        buildButton("C", 1, Colors.white),
                        buildButton("⌫", 1, Colors.orangeAccent),
                        buildButton("+", 1, Colors.orangeAccent),
                      ]),
                      TableRow(children: [
                        buildButton("7", 1, Colors.black),
                        buildButton("8", 1, Colors.black),
                        buildButton("9", 1, Colors.black),
                      ]),
                      TableRow(children: [
                        buildButton("4", 1, Colors.black),
                        buildButton("5", 1, Colors.black),
                        buildButton("6", 1, Colors.black),
                      ]),
                      TableRow(children: [
                        buildButton(".", 1, Colors.black),
                        buildButton("0", 1, Colors.black),
                        buildButton("00", 1, Colors.black),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Table(children: [
                      TableRow(children: [
                        buildButton("x", 1, Colors.orangeAccent),
                      ]),
                      TableRow(children: [
                        buildButton("-", 1, Colors.orangeAccent),
                      ]),
                      TableRow(children: [
                        buildButton("+", 1, Colors.orangeAccent),
                      ]),
                      TableRow(children: [
                        buildButton("=", 2, Colors.orangeAccent),
                      ])
                    ])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
