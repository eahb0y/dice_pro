import 'dart:math';

import 'package:flutter/material.dart';

class OneDice extends StatefulWidget {
  const OneDice({Key? key}) : super(key: key);

  @override
  State<OneDice> createState() => _OneDiceState();
}

class _OneDiceState extends State<OneDice> {
  int dice = 2;

  void change() {
    setState(() {
      dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: Colors.red,
        title: const Center(child: Text('Dice')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(
            onPressed: change,
            child: Image.asset('images/dice$dice.png'),
          ))
        ],
      ),
    );
  }
}
