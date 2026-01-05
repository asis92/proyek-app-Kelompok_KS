import 'package:flutter/material.dart';

class SplashScreen5 extends StatefulWidget {
  const SplashScreen5({super.key});

  @override
  State<SplashScreen5> createState() => _SplashScreen5State();
}

class _SplashScreen5State extends State<SplashScreen5> 
with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '');
      }
    });
  }
   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
    
}