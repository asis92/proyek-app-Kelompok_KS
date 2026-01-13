import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart'; // Import Firebase Messaging package
import 'firebase_options.dart'; // Import Firebase options

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // tambah title untuk judul 
  
   @override
  State<MyHomePage> createState() => _MyHomePageState(); // ubah menjadi StatefulWidget
}

class _MyHomePageState extends State<MyHomePage> { // ubah menjadi State<MyHomePage>
  String _message = "No message received yet, waiting..."; // Variable to hold the message

    @override
  void initState() { // metode initState untuk inisialisasi
    super.initState();
    setupFCM(); // Panggil setupFCM untuk mengatur Firebase Cloud Messaging
  }

    // Konfigurasi Firebase Cloud Messaging
  Future<void> setupFCM() async {
    print("Setting up Firebase Cloud Messaging..."); // Log setup start

    final FirebaseMessaging messaging = FirebaseMessaging.instance; // Dapatkan instance FirebaseMessaging

        // Minta izin notifikasi ke user
    await messaging.requestPermission(); // Minta izin notifikasi

        // Ambil token FCM
    String? token = await messaging.getToken();
    print("TOKEN SAYA: $token"); // Cetak token ke konsol

        // Dengarkan pesan masuk saat aplikasi berada di foreground
        FirebaseMessaging.onMessage.listen((RemoteMessage message) { // Dengarkan pesan masuk
      if (message.notification != null) {
        setState(() {
          _message =
              "${message.notification!.title}: ${message.notification!.body}"; // Perbarui pesan dengan judul dan isi notifikasi
        });
      }
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pesan Notifikasi:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _message,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

