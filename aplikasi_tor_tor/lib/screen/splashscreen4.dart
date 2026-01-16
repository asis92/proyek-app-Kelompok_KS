import 'package:flutter/material.dart';
import 'package:aplikasi_tor_tor/screen/splashscreen5.dart';

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // IMAGE
            Expanded(
              flex: 6,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/wisata_jogya.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // TEXT CONTENT
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Hotel Candra Sari",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Nikmati pengalaman menginap terbaik dengan kenyamanan, \n pelayanan premium, dan lokasi strategis.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            // INDICATOR + BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SplashScreen5(),
                        ),
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                  // Indicator
                  Row(
                    children: [
                      _dot(active: false),
                      _dot(active: true),
                      _dot(active: false),
                    ],
                  ),

                  // Next Button
                  CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen5(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dot({required bool active}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 18 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: active
            ? Colors.redAccent
            : Colors.redAccent.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
