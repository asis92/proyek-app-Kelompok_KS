import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Asis Dwi Saputra"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 8,
              shadowColor: Colors.blueAccent,
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.yellow, Colors.green],
                  ),
                ),
                child: Row(children: [
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
