import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/themes/Light/Colors.dart';

ElevatedButtonThemeData elevatedButtonLight = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(lightfbgcolor),
    foregroundColor: MaterialStateProperty.all(lightfcolor),
  ),
);
