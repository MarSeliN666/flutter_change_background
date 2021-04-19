import 'dart:math';

import 'package:flutter/material.dart';

// https://www.figma.com/file/dooyNpjr17FyhIjkdERmpb/Untitled?node-id=0%3A1

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colorBackground = Colors.white;

  void _changeBackground() {
    setState(() {
      _colorBackground = generateRandomColor();
    });
  }

  Color generateRandomColor() {
    Random random = Random();
    double randomDouble = random.nextDouble();

    return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeBackground();
      },
      child: Scaffold(
        backgroundColor: _colorBackground,
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 64.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hey\nthere",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32.0,
                          fontFamily: 'VarelaRound',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(
                      flex: 8,
                    ),
                    Text(
                      'Tap the screen\nto change background',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: 'VarelaRound',
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Column(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
