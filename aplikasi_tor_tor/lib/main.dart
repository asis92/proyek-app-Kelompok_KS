<<<<<<< HEAD
import 'package:aplikasi_tor_tor/screen/splashscreen1.dart';
=======
import 'package:aplikasi_tor_tor/dataprofile/profile1.dart';
>>>>>>> 8a23a53d78c9c5244c194d0cbb6f291259b3703a
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
<<<<<<< HEAD
      home: Splashscreen1(), //memanggil nama class splash screen 1
=======
      home: Card1(), //memanggil nama class splash screen 1
>>>>>>> 8a23a53d78c9c5244c194d0cbb6f291259b3703a
    );
  }
}
