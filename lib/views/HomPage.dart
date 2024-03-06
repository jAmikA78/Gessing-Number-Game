import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';
import 'package:gessing_numbers_game/views/SettingsPage.dart';
import 'package:gessing_numbers_game/views/SinglePlayer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gessing Game"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const singlePlayerPage()));
              },
              child: Text((langIdx == true) ? "Single" : "فردى")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const singlePlayerPage()));
              },
              child: Text((langIdx == true) ? "Double" : "زوجى")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const settingPage()));
              },
              child: Text((langIdx == true) ? "Settings" : "الاعدادت")),
        ],
      ),
    );
  }
}
