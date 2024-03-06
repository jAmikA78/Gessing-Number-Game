import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';

class singlePlayerPage extends StatefulWidget {
  const singlePlayerPage({super.key});

  @override
  State<singlePlayerPage> createState() => _singlePlayerPageState();
}

class _singlePlayerPageState extends State<singlePlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((langIdx == true) ? "single player" : "لعب فردى"),
      ),
    );
  }
}
