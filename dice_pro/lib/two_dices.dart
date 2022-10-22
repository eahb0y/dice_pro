import 'dart:math';

import 'package:flutter/material.dart';

class TwoDices extends StatefulWidget {
  const TwoDices({Key? key}) : super(key: key);

  @override
  State<TwoDices> createState() => _TwoDicesState();
}

class _TwoDicesState extends State<TwoDices> {
  int leftDice = 1;
  int rightdice = 2;

  void change() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: Colors.red,
        title: const Center(child: Text('Dices')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: change,
                    child: Image.asset('images/dice$leftDice.png')),
              ),
              Expanded(
                child: TextButton(
                  onPressed: change,
                  child: Image.asset('images/dice$rightdice.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
