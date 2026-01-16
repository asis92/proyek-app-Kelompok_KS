import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Profile4()));
}

class Profile4page extends StatelessWidget {
  const Profile4page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anggie Aditya Saputra',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Profile4(),
    );
  }
}

class Profile4 extends StatelessWidget {
  const Profile4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile Anggie Aditya Saputra'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(125.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/anggie.jpeg'),
            ),
            const SizedBox(height: 50),
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
