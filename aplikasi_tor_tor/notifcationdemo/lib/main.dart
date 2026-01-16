import 'package:flutter/material.dart';
import 'home_page.dart'; // import MyHomePage

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Demo', // Judul aplikasi
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'), // tambah judul AppBar notifikasi
        centerTitle: true, 
      ),
      body: const MyHomePage(
        title: 'Tugas Kelompok UAS Aplikasi Mobile', // tambah judul halaman utama notifikasi
      ),
    );
  }
}
