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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.2),
                                    blurRadius: 10,
                                    offset: Offset(0,5),
                                  )
                                ]
                                ),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: AssetImage("images/grafica01.png"),
                                ),
                            ),
                            SizedBox(height: 10),
                            Text("Grafica Jati Sugiyarto",
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text("Instagram : @GraficaJS",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text("Pekerjaan",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Karyawan Swasta",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow.withValues(alpha: 0.5),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40,
                                child: VerticalDivider(thickness: 1,
                                color: Colors.yellow,width: 1),
                                ),
                                Column(
                                  children: [
                                    Text("Status",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Menikah",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow.withValues(alpha: 0.5),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40,
                                child: VerticalDivider(thickness: 1,
                                color: Colors.yellow,width: 1),
                                ),
                                Column(
                                  children: [
                                    Text("Alamat",
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Kota Tangerang",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow.withValues(alpha: 0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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