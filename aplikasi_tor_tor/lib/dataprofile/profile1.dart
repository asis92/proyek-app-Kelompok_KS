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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 5),
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("images/asis.jpeg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
