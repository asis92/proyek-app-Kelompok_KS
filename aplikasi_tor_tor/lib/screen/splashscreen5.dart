import 'package:aplikasi_tor_tor/dataprofile/profile5.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tor_tor/screen/splashscreen1.dart';

class SplashScreen5 extends StatefulWidget {
  const SplashScreen5({super.key});

  @override
  State<SplashScreen5> createState() => _SplashScreen5State();
}

class _SplashScreen5State extends State<SplashScreen5>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // ✅ INISIALISASI FADE ANIMATION (INI YANG HILANG)
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();

    // ✅ Navigasi otomatis setelah splash
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splashscreen1()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.hotel, size: 100, color: Colors.white),
                const SizedBox(height: 24),
                const Text(
                  'Booking Hotel',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Temukan Menginap Impianmu',
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                ),
                const SizedBox(height: 30),

                // indikator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: index == 4
                            ? const Color.fromARGB(255, 7, 243, 109)
                            : const Color.fromARGB(255, 211, 219, 215),
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 30),
                SizedBox(
                  width: 220,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile5(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
