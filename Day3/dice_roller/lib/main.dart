import 'package:flutter/material.dart';
import 'package:dice_roller/components/dice_roller.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Dice Roller',
            style: TextStyle(
              color: Color.fromARGB(
                255,
                255,
                255,
                255,
              ),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(
          0xff1a0250,
        ),
        body: DiceRoller(),
      ),
    ),
  );
}

