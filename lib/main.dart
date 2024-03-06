import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';
import 'package:gessing_numbers_game/themes/Dark/DarkThemData.dart';
import 'package:gessing_numbers_game/themes/Light/ThemData.dart';
import 'package:gessing_numbers_game/views/HomPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gessing Numper',
      theme: (themIdx == true) ? lightThem : DarkThem,
      home: const HomePage(),
    );
  }
}
