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
      
    );
  }
}