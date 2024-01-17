// IMPORTANT - PLEASE READ
// Every file is included in the project even the dependencies.project
// is semi responsive and the icons and textboxes are all custom created.
// After making sure you are in the directory folder then run the following commands in same order:
//
// flutter pub get
//
// flutter run --no-sound-null-safety
//

import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:link/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: MyPageView(),
      ),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            loginPage(),
            mainPage(context),
          ],
        ),
      ),
    );
  }

  Widget loginPage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, .5),
                shape: BoxShape.circle,
              ),
              width: 250,
              child: Image.asset("assets/icon.png")),
          const SizedBox(height: 30),
          roundText("Username"),
          const SizedBox(height: 30),
          roundText("Password"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              roundButton("  Login  "),
              const SizedBox(width: 20),
              roundButton("Register")
            ],
          ),
          const SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Link(
                child: Text(
                  'About Us',
                  style: TextStyle(
                      decoration:
                          TextDecoration.underline, // add add underline in text
                      color: Colors.white,
                      fontSize: 20),
                ),
                url: 'https://ltky.fi/en/',
              ),
              SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget mainPage(context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/main.jpg"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10, height: 10),
              electionBox(context),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    newsBox(context),
                    const SizedBox(height: 10),
                    budgetBox(context)
                  ]),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [SizedBox(width: 10), roundButton("Logout")]),
            Row(
              children: const [
                Link(
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        decoration: TextDecoration
                            .underline, // add add underline in text
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  url: 'https://ltky.fi/en/',
                ),
                SizedBox(width: 10)
              ],
            )
          ]),
        ],
      ),
    );
  }

  Container electionBox(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      height: MediaQuery.of(context).size.height * 0.70,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(150, 20, 60, .8),
          border: Border.all(color: Colors.red, style: BorderStyle.solid)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Title(
              color: Colors.redAccent,
              child: RichText(
                  text: TextSpan(
                      text: "Elections",
                      style: TextStyle(
                          fontStyle: FontStyle.values.first,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)))),
          textBox(context, "Budget Plan", "Main Budget Plan for 2022"),
          textBox(context, "Next Semester Additional Plans",
              "Guild propositions for how to spend the money"),
          textBox(context, "Meetings Frequency",
              "Should we Increase the meetings from each month to each two weeks ?")
        ],
      ),
    );
  }

  FloatingActionButton roundButton(String title) {
    return FloatingActionButton.extended(
      label: Text(title),
      backgroundColor: Colors.redAccent,
      onPressed: () {
        var pageNum;
        if (_pageController.page == 0) {
          pageNum = 1;
        } else {
          pageNum = 0;
        }
        _pageController.animateToPage(
          pageNum,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}

Container roundText(String hint) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      color: const Color.fromRGBO(231, 40, 109, .6),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.all(15),
          border: InputBorder.none),
    ),
  );
}

Container textBox(context, String title, String paragraph) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.55,
    height: MediaQuery.of(context).size.height * 0.20,
    decoration: BoxDecoration(
        color: Colors.white, border: Border.all(color: Colors.lightBlueAccent)),
    child: RichText(
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
            text: title + '\n\n',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        TextSpan(
          text: paragraph,
        )
      ]),
    ),
  );
}

Container news(context, String title, String paragraph) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.22,
    height: MediaQuery.of(context).size.height * 0.11,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 232, 229, 230),
        border: Border.all(color: const Color.fromRGBO(222, 50, 199, 1.0))),
    child: RichText(
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
            text: title + '\n',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            )),
        TextSpan(
          text: paragraph,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 8,
          ),
        )
      ]),
    ),
  );
}

Container newsBox(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.25,
    height: MediaQuery.of(context).size.height * 0.40,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(115, 5, 44, 0.8),
        border: Border.all(color: Colors.red, style: BorderStyle.solid)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Title(
            color: Color.fromARGB(255, 234, 36, 36),
            child: RichText(
                text: TextSpan(
                    text: "News",
                    style: TextStyle(
                        fontStyle: FontStyle.values.first,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)))),
        news(context, "LTKY Newsletter, April",
            "Climate Puzzle -workshop\nLeague of Legends Finnish Student Championship 2022\nSurvivor Sauna"),
        news(context, "Representative council meeting 23.3.",
            "Report from the LTKY board\nLTKY’s action report in 2021\nFiscal report from 2021\nAuditor reports from 2021"),
        news(context, "Contact information",
            "The Student Union of LUT University (LTKY) will take part in a demonstration on Wednesday 13 April 2022 from 3 pm to 4 pm in front of the Student House.")
      ],
    ),
  );
}

Container budgetBox(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.25,
    height: MediaQuery.of(context).size.height * 0.40,
    alignment: FractionalOffset.center,
    decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, .70),
        border: Border.all(
            color: const Color.fromRGBO(255, 255, 255, 1.0),
            style: BorderStyle.solid)),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: TextStyle(
              height: MediaQuery.of(context).size.height * 0.0035,
              fontSize: MediaQuery.of(context).size.shortestSide * 0.03),
          children: const [
            TextSpan(
                text: "2022 Budget : 20000 Euro" + '\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "Spent Budget : 12000 Euro" + '\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "Planned Budget : 15000 Euro" + '\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "Unplanned Budget : 5000 Euro" + '\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))
          ]),
    ),
  );
}
