import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainWidget());
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        fontFamily: 'VarelaRound',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Color _colorBackground = Colors.white;

  void _changeBackground() {
    setState(() {
      _colorBackground = generateRandomColor();
    });
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
                      child: Text('Hey\nthere',
                          style: Theme.of(context).textTheme.headline1),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Tap the screen\nto change background',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      height: 64.0,
                    ),
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

//Generate random color
Color generateRandomColor() {
  Random random = Random();
  double randomDouble = random.nextDouble();

  return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
}
