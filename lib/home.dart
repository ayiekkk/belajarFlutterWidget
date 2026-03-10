import 'package:flutter/material.dart';

class LapakBantulPage extends StatelessWidget {
  const LapakBantulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B4C8C),
      body: SafeArea(
        child: Column(
          children: [

            // HEADER
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: const Color(0xFF0B4C8C),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LaPak Bantul",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Pusat layanan pajak terpadu",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/image/photoProfile.png"),
                  )
                ],
              ),
            ),

            // AREA PUTIH
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      // GRID MENU
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 1.6,
                        children: const [
                          MenuItem(title: "BPHTB"),
                          MenuItem(title: "BPHTB"),
                          MenuItem(title: "BPHTB"),
                          MenuItem(title: "BPHTB"),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // CARD LAYANAN
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0B4C8C),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.local_shipping,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Layanan keliling\nLihat jadwal layanan keliling",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 16)
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // INFORMASI PAJAK
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Informasi pajak",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF0B4C8C),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE5E7EB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.description, color: Color(0xFF0B4C8C)),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(color: Color(0xFF0B4C8C)),
          )
        ],
      ),
    );
  }
}