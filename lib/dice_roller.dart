import 'dart:math';

import 'package:first_app/text_widget.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentRoll = 2;
  void rollDice() {
    setState(() {
      currentRoll = Random().nextInt(6) + 1;
    });
    print(currentRoll);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget("Roll the dice"),
        Image.asset("assets/images/dice-$currentRoll.png"),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28, color: Colors.white),
          ),
          child: Text("Roll"),
        ),
      ],
    );
  }
}
