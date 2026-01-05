import 'package:flutter/material.dart';

void main() {
  runApp(const aplikasi_tor_tor());
}

class aplikasi_tor_tor extends StatelessWidget {
  const aplikasi_tor_tor({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Tugas Kelompok UAS Aplikasi Mobile'),
    );
  }
}
