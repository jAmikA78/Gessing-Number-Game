import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';

class multiPlayerPage extends StatefulWidget {
  const multiPlayerPage({super.key});

  @override
  State<multiPlayerPage> createState() => _multiPlayerPageState();
}

class player {
  int num1 = 0;
  int num2 = 0;
  int score = 0;
  bool lose = false;
}

class _multiPlayerPageState extends State<multiPlayerPage> {
  player player1 = new player();
  player player2 = new player();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(pi),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    (langIdx == 1)
                        ? "your Score = ${player1.score}"
                        : "عدد نقاطق الحالى = ${player1.score}",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            choice(1, 1);
                          },
                          child: Text(
                            player1.num1.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          )),
                      ElevatedButton(
                          onPressed: () {
                            choice(1, 2);
                          },
                          child: const Text('=')),
                      ElevatedButton(
                          onPressed: () {
                            choice(1, 3);
                          },
                          child: Text(
                            player1.num1.toString(),
                            style: Theme.of(context).textTheme.headline1,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  (langIdx == 1)
                      ? "your Score = ${player2.score}"
                      : "عدد نقاطق الحالى = ${player2.score}",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          choice(2, 1);
                        },
                        child: Text(
                          player1.num2.toString(),
                          style: Theme.of(context).textTheme.headline1,
                        )),
                    ElevatedButton(
                        onPressed: () {
                          choice(2, 2);
                        },
                        child: const Text('=')),
                    ElevatedButton(
                        onPressed: () {
                          choice(2, 3);
                        },
                        child: Text(
                          player2.num1.toString(),
                          style: Theme.of(context).textTheme.headline1,
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void choice(int playerNum, int choiceNum) {}
}
