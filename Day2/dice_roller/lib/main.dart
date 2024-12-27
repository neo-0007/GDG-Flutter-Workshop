import 'package:flutter/material.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dice-1.png',
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    120,
                    40,
                  ),
                  backgroundColor: Color(
                    0xFFE0E0E0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                ),
                child: Text('ROLL'),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
