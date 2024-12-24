import 'package:flutter/material.dart';

class RollButton extends StatelessWidget {
  const RollButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onTap,
        child: const Text(
          'ROLL',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
