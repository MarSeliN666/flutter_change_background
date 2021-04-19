import 'dart:math';

import 'package:flutter/material.dart';

class ChangeColor {
  //Generate random color
  Color generateRandomColor() {
    Random random = Random();
    double randomDouble = random.nextDouble();

    return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
