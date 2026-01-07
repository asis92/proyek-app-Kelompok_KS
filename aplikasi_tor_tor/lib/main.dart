import 'package:aplikasi_tor_tor/dataprofile/profile2.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Uas Kelompok KS",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      debugShowCheckedModeBanner: false,

      home: DataProfile2(), //memanggil nama class splash screen 1

    );
  }
}
