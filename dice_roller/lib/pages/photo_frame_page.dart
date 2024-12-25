import 'package:flutter/material.dart';

class PhotoFramePage extends StatelessWidget {
  const PhotoFramePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/a_dog_in_a_frame.png',
            width: 200,
          ),
          SizedBox(height: 20),
          Text(
            'Hii',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}