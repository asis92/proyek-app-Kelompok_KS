import 'package:flutter/material.dart';

class Profile5 extends StatelessWidget {
  const Profile5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: const Text(
          'Profile Karyawan',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.green, // Green dark
                    Color.fromARGB(255, 252, 252, 252), // Green light
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
               child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Jejen Jaenudin',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Staff IT',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 25),

            // INFO KARYAWAN
             _infoCard(
              icon: Icons.badge,
              title: 'ID Karyawan',
              value: 'EMP-001',
            ),
            _infoCard(
              icon: Icons.school,
              title: 'Pendidikan',
              value: 'S1 – Global Institute',
            ),
            _infoCard(
              icon: Icons.badge, 
              title: 'NIM', 
              value: '1125170031'
            ),
              _infoCard(
              icon: Icons.class_, 
              title: 'Kelas', 
              value: '25KS'
            ),
             _infoCard(
              icon: Icons.code,
              title: 'Keahlian',
              value: 'Membuat Program Mobile',
            ),
            _infoCard(
              icon: Icons.apartment,
              title: 'Divisi',
              value: 'Information Technology',
            ),
            _infoCard(
              icon: Icons.work,
              title: 'Status',
              value: 'Karyawan Tetap',
            ),
            _infoCard(
              icon: Icons.date_range,
              title: 'Tanggal Masuk',
              value: '10 Januari 2001',
            ),
              _infoCard(
              icon: Icons.email,
              title: 'Email',
              value: 'jejenjaenudin192@email.com',
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    't u t u p',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
  
 static Widget _infoCard({
    required IconData icon,
    required String title,
    required String value,
  })
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0),
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.green),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}


