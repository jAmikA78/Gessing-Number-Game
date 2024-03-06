import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';
import 'package:gessing_numbers_game/themes/dark/colors.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(fbgcolor),
    textStyle: MaterialStateProperty.all(TextStyle(
      color: fcolor,
      fontSize: fontSize,
    )),
  ),
);
