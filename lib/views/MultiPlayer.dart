import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';

class multiPlayerPage extends StatefulWidget {
  const multiPlayerPage({super.key});

  @override
  State<multiPlayerPage> createState() => _multiPlayerPageState();
}

Random random = Random();

class _multiPlayerPageState extends State<multiPlayerPage> {
  int num11 = random.nextInt(100) + 1;
  int num12 = random.nextInt(100) + 1;
  int num21 = random.nextInt(100) + 1;
  int num22 = random.nextInt(100) + 1;
  int score1 = 0;
  int score2 = 0;
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
                        ? "your Score = $score1"
                        : "عدد نقاطق الحالى = $score1",
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
                            num11.toString(),
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
                            num12.toString(),
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
                      ? "your Score = $score2"
                      : "عدد نقاطق الحالى = $score2",
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
                          num22.toString(),
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
                          num21.toString(),
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

  void choice(int playerNum, int choiceNum) {
    bool flag = true;
    setState(() {
      if (playerNum == 1) {
        if (num11 > num12 && choiceNum != 1) {
          flag = false;
        } else if (num11 == num12 && choiceNum != 2) {
          flag = false;
        } else if (num11 < num12 && choiceNum != 3) {
          flag = false;
        }
        if (flag) {
          score1++;
        }
        num11 = random.nextInt(100) + 1;
        num12 = random.nextInt(100) + 1;
      } else {
        if (num21 > num22 && choiceNum != 3) {
          flag = false;
        } else if (num21 == num22 && choiceNum != 2) {
          flag = false;
        } else if (num21 < num22 && choiceNum != 1) {
          flag = false;
        }
        if (flag) {
          score2++;
        }
        num21 = random.nextInt(100) + 1;
        num22 = random.nextInt(100) + 1;
      }
    });
  }
}
