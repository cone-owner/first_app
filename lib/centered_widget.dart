import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:first_app/text_widget.dart';
import 'package:flutter/material.dart';

class CenteredWidget extends StatelessWidget {
  const CenteredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DiceRoller()
    );
  }
}
