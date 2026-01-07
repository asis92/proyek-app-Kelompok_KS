import 'package:flutter/material.dart';

class profile4 extends StatelessWidget {
  const profile4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Anggie Aditya Saputra')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/foto_a.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Nama: Anggie Aditya Saputra',
              style: TextStyle(fontSize: 20),
            ),
            const Text('NIM: 1125170030', style: TextStyle(fontSize: 18)),
            const Text('Kelas: SE 25 KS', style: TextStyle(fontSize: 18)),
            const Text('Keahlian: Network', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
