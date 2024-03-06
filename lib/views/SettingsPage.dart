import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text((langIdx == true) ? "Settings" : "الاعدادت")),
    );
  }
}
