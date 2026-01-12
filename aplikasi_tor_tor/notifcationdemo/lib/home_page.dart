import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart'; // Import Firebase Messaging package

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title; // tambah title untuk judul 
  
   @override
  State<MyHomePage> createState() => _MyHomePageState(); // ubah menjadi StatefulWidget
}

class _MyHomePageState extends State<MyHomePage> { // ubah menjadi State<MyHomePage>
  String _message = "No message received yet, waiting...";