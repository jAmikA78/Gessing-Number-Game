import 'package:flutter/material.dart';
import 'package:gessing_numbers_game/const/const.dart';
import 'package:gessing_numbers_game/themes/ThemeProvider.dart';
import 'package:gessing_numbers_game/views/MultiPlayer.dart';
import 'package:gessing_numbers_game/views/SinglePlayer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          (langIdx == 1) ? "Gessing Game" : "لعبة تخمين",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: AssetImage((themIdx == 1)
                  ? "assets/images/LightIcon.gif"
                  : "assets/images/DarkIcon.gif")),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const singlePlayerPage()));
            },
            child: Text(
              (langIdx == 1) ? "Single" : "فردى",
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const multiPlayerPage()));
            },
            child: Text(
              (langIdx == 1) ? "Double" : "زوجى",
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    langIdx ^= 1;
                  });
                },
                child: Text(
                  (langIdx == 1) ? "العربية" : "English",
                ),
              ),
              const SizedBox(width: 30),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                      themIdx ^= 1;
                    });
                  },
                  child: Text(
                    (langIdx == 1)
                        ? ((themIdx == 1) ? "Light" : "dark")
                        : ((themIdx == 1) ? "فاتح" : "داكن"),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
