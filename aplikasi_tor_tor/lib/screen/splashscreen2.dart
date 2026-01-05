import 'package:flutter/material.dart';

class MySplashScreenUAS extends StatelessWidget {
  const MySplashScreenUAS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}