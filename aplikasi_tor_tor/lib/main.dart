import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  // Fungsi Main
  runApp(const MyHotelApp());
}

class MyHotelApp extends StatelessWidget {
  // Aplikasi Utama
  const MyHotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat Widget
    return MaterialApp(
      title: 'Booking Hotel', // Judul Aplikasi
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
        ), // Tema Warna
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
