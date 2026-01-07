import 'package:flutter/material.dart'; // Import Flutter Material Package
import 'package:aplikasi_tor_tor/screen/splashscreen4.dart'; // Import Splashscreen4

class SplashScreen extends StatelessWidget {
  // class SplashScreen
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur warna latar belakang halaman splash screen
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // 
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Aplikasi Booking Hotel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 30),

              // 
              const CircleAvatar(
                radius: 90,
                // 
                backgroundImage: AssetImage('assets/images/hotel4.jpg'),
              ),

              const SizedBox(height: 20),

              // 
              const Text(
                'Oleh \nYehezkiel Arisandi Bulan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // 
              const Text(
                'UAS Aplikasi Mobile',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),

              const SizedBox(height: 20),

              // 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: index == 1
                        ? 12
                        : 8, // 
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == 1
                          ? Colors
                                .green // 
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),

              // 
              const Spacer(),

              // 
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    //
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen4()),
                    );
                  },
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
