import 'package:flutter/material.dart'; // Import Flutter Material Package
import 'profil.dart'; // Import halaman profil

class SplashScreen extends StatelessWidget {
  // Kelas SplashScreen
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mengatur warna latar belakang aplikasi menjadi abu-abu terang
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Widget Teks untuk Judul Utama Aplikasi
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Aplikasi Booking Hotel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 30),

              // Widget Lingkaran untuk menampilkan Gambar Logo/Profil
              const CircleAvatar(
                radius: 90,
                // Memanggil file gambar dari folder assets yang didaftarkan di pubspec.yaml
                backgroundImage: AssetImage('assets/images/hotel4.jpg'),
              ),

              const SizedBox(height: 20),

              // Widget Teks untuk menampilkan Nama Pembuat Aplikasi
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

              // Widget Teks untuk menampilkan Keterangan Tambahan
              const Text(
                'UAS Aplikasi Mobile',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),

              const SizedBox(height: 20),

              // Indikator Dot untuk mempercantik UI Splash Screen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: index == 1
                        ? 12
                        : 8, // Lebar titik indeks ke-1 lebih besar
                    height: 8,
                    decoration: BoxDecoration(
                      color: index == 1
                          ? Colors
                                .green // Titik indeks ke-1 diberi warna hijau
                          : Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),

              // Spacer digunakan untuk mendorong tombol Lanjut ke bagian paling bawah
              const Spacer(),

              // Tombol Navigasi untuk berpindah ke Halaman Profil
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
                    // Navigasi ke halaman TeamProfilePage saat tombol ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TeamProfilePage(),
                      ),
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
