import 'package:flutter/material.dart';

class DataProfile2 extends StatelessWidget {
  const DataProfile2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text("Data Profile Grafica Jati Sugiyarto"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 8,
                    shadowColor: Colors.cyanAccent,
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.green, Colors.deepOrangeAccent],
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                              ),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage("images/grafica01.png"),
                              ),
                          ),
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