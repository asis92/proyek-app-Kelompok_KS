import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart'; // Import Firebase Messaging package

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // tambah title untuk judul halaman