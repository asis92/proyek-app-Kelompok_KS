import 'package:flutter/material.dart';

// 1. Membuat halaman profil anggota tim dengan StatelessWidget
class TeamProfilePage extends StatelessWidget {
  const TeamProfilePage({super.key});

  // 2. Data anggota tim disimpan dalam list of maps
  final List<Map<String, String>> teamMembers = const [
    {
      "nim": "1125170084",
      "name": "Yehezkiel Arisandi Bulan",
      "jurusan": "Teknik Informatika",
      "prodi": "Sistem Informasi",
      "role": "UAS Aplikasi Mobile",
      // 3. Menentukan path gambar profil anggota tim
      "image": "assets/images/image2.jpeg", 
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 4. Mengatur warna latar belakang halaman profil
      backgroundColor: const Color(0xFFF7F8FC), 
      appBar: AppBar(
        // 5. Menambahkan judul pada AppBar
        title: const Text("Profil Saya"),
        // 6. Mengatur warna latar belakang dan teks AppBar
        backgroundColor: const Color(0xFF1A237E),
        foregroundColor: Colors.white,
      ),
      // 7. tambah SingleChildScrollView untuk mencegah error overflow jika konten melebihi tinggi layar
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // 8. tambah GridView.builder untuk menampilkan profil anggota tim dalam bentuk grid
              GridView.builder(
                // 9. Mengatur ukuran GridView agar sesuai dengan konten
                shrinkWrap: true, 
                // 10. Menonaktifkan scroll pada GridView agar tidak bertabrakan dengan SingleChildScrollView
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, 
                  // 11. Mengatur jarak antar kolom dan baris dalam grid
                  mainAxisExtent: 400,
                ),
                itemCount: teamMembers.length,
                itemBuilder: (context, index) {
                  final member = teamMembers[index];
                  // 12. Menggunakan Card untuk menampilkan informasi profil anggota tim
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
//                         // 13. Widget CircleAvatar untuk menampilkan gambar profil anggota tim
//                         CircleAvatar(
//                           radius: 70,
//                           backgroundColor: Colors.grey[200],
//                           backgroundImage: AssetImage(member['image']!),
//                         ),
//                         const SizedBox(height: 15),
//                         // 14. Menampilkan nama anggota tim dengan gaya teks yang menonjol
//                         Text(
//                           member['name']!,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                         ),
//                         // 15. Menambahkan garis pemisah antar elemen informasi
//                         const Divider(indent: 40, endIndent: 40, thickness: 1),
//                         // 16. Menampilkan NIM anggota tim
//                         Text("NIM: ${member['nim']}"),
//                         const SizedBox(height: 4),
//                         // 17. Menampilkan jurusan dan program studi anggota tim
//                         Text("${member['jurusan']} - ${member['prodi']}"),
//                         const SizedBox(height: 12),
//                         // 18. Menampilkan peran atau keterangan tambahan anggota tim dalam sebuah container dengan latar belakang berwarna
//                         Container(
//                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//                           decoration: BoxDecoration(
//                             // 19. Memberi warna latar belakang hijau muda pada container
//                             color: Colors.green.withValues(alpha: 0.1),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Text(
//                             member['role']!,
//                             style: const TextStyle(
//                               color: Colors.green,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),
              
//               // 20. Tombol untuk kembali ke halaman Splash Screen
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   icon: const Icon(Icons.arrow_back),
//                   label: const Text(
//                     "Kembali ke Splash Screen",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF1A237E),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }