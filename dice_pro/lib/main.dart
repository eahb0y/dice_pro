import 'package:dice_pro/two_dices.dart';
import 'package:flutter/material.dart';

import 'one_dice.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/one_dice': (context) => const OneDice(),
        '/two_dices': (context) => const TwoDices(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            "Dice game",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Select dice"),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/one_dice'),
                child: const Text("One dice")),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/two_dices'),
                child: const Text("Two dices")),
          ],
        ),
      ),
    );
  }
}
