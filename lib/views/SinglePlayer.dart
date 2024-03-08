import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';

class singlePlayerPage extends StatefulWidget {
  const singlePlayerPage({super.key});

  @override
  State<singlePlayerPage> createState() => _singlePlayerPageState();
}

Random _random = Random();
int _num1 = _random.nextInt(100) + 1;
int _num2 = _random.nextInt(100) + 1;
int _cnt = 0;

class _singlePlayerPageState extends State<singlePlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((langIdx == 1) ? "single player" : "لعب فردى"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${(langIdx == 1) ? "cunter = " : "العداد = "}$_cnt",
            style: Theme.of(context).textTheme.headline1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    choice(1);
                  },
                  child: Text(_num1.toString())),
              ElevatedButton(
                  onPressed: () {
                    choice(1);
                  },
                  child: const Text('=')),
              ElevatedButton(
                  onPressed: () {
                    choice(3);
                  },
                  child: Text(_num2.toString()))
            ],
          )
        ],
      ),
    );
  }

  void choice(int pos) {
    bool flag = true;
    if (_num1 == _num2 && pos != 2) {
      flag = false;
    } else if (_num1 > _num2 && pos != 1) {
      flag = false;
    } else if (_num1 < _num2 && pos != 3) {
      flag = false;
    }
    setState(() {
      if (flag) {
        _cnt++;
        _num1 = _random.nextInt(100) + 1;
        _num2 = _random.nextInt(100) + 1;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text((langIdx == 1)
                ? "sorry, you are losing !!!\nyour Score is $_cnt"
                : "للأسف لقد خسرت\n لقد حققت $_cnt"),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.black,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
        _cnt = 0;
      }
    });
  }
}
