import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   int selectedCity = 0;

  final List<String> cities = [
    "Jakarta",
    "Bali",
    "Surabaya",
    "Bandung",
    "Yogyakarta",
    "Bogor",
    "Semarang",
    "Solo",
    "Malang",
    "Medan",
  ];
  final List<Map<String, String>> jelajahHotel = [
    {
      "image": "assets/images/hotel1.jpeg",
      "location": "Kebon Sirih",
      "name": "Horison Ultima Menteng Jakarta",
      "rating": "9.0",
      "review": "1,4rb ulasan",
      "price": "Rp 390.770",
      "discount": "Hemat 25%"
    },
    {
      "image": "assets/images/hotel22.jpeg",
      "location": "Senen",
      "name": "Lumire Hotel & Convention Center",
      "rating": "8.4",
      "review": "10,5rb ulasan",
      "price": "Rp 819.001",
      "discount": "Hemat 25%"
    },
    {
      "image": "assets/images/hotel3.jpeg",
      "location": "Tanah Abang",
      "name": "Ashley Tanah Abang",
      "rating": "9.0",
      "review": "1,3rb ulasan",
      "price": "Rp 1.029.247",
      "discount": "Hemat 25%"
    },
  ];
  
 final List<Map<String, String>> promoHotel = [
    {"image": "assets/images/promo11.jpg"},
    {"image": "assets/images/promo2.jpg"},
    {"image": "assets/images/promo3.jpg"},
    {"image": "assets/images/promo1.jpg"},
  ];
  
 
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           SizedBox(
              height: 280,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/backgroundds.jpg',
                    fit: BoxFit.cover,
                  ),

                Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Promo Paket Hotel 2026",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Nikmati liburan terbaik dengan hotel pilihanmu",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 
                  sectionTitle("Ayo Jelajah Indonesia"),
                  cityTabs(),
                  const SizedBox(height: 15),
                  jelajahHotelList(),
                  const SizedBox(height: 30),
                 sectionTitle(
                    "Booking Hotel & Penginapan Murah dengan Harga Promo",
                  ),
                  promoImageList(screenWidth),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget promoImageList(double screenWidth) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: promoHotel.length,
        itemBuilder: (context, index) {
          return Container(
            width: screenWidth * 0.55, // 👈 SETENGAH LAYAR
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(promoHotel[index]["image"]!),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
   Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  
  Widget cityTabs() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final isActive = selectedCity == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(cities[index]),
              selected: isActive,
              selectedColor: Colors.blue,
              backgroundColor: Colors.white,
              labelStyle: TextStyle(
                color: isActive ? Colors.white : Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              onSelected: (_) {
                setState(() => selectedCity = index);
              },
            ),
          );
        },
      ),
    );
  }
  
  Widget jelajahHotelList() {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: jelajahHotel.length,
        itemBuilder: (context, index) {
          final hotel = jelajahHotel[index];
          return Container(
            width: 260,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.asset(
                        hotel["image"]!,
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: chip(hotel["location"]!),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: discountChip(hotel["discount"]!),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel["name"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "${hotel["rating"]}/10 • ${hotel["review"]}",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        hotel["price"]!,
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  Widget chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
   Widget discountChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
