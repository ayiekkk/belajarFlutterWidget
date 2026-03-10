import 'package:flutter/material.dart';

class LayananKelilingPage extends StatelessWidget {
  const LayananKelilingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Layanan Keliling"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TANGGAL SCROLL
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DateItem(
                    date: "21/01/2024",
                    active: true,
                  ),
                  SizedBox(width: 8),
                  DateItem(date: "25/01/2024"),
                  SizedBox(width: 8),
                  DateItem(date: "28/01/2024"),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Hari ini, 21 Januari 2024",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 16),

            // CARD MOBIL 1
            const MobilCard(
              title: "Mobil 01",
              location: "Mangir lor & Manager tengah, sendang",
              time: "08:00 - 16:00",
            ),

            const SizedBox(height: 12),

            // CARD MOBIL 2
            const MobilCard(
              title: "Mobil 02",
              location: "Mangir lor & Manager tengah, sendang",
              time: "08:00 - 16:00",
            ),
          ],
        ),
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  final String date;
  final bool active;

  const DateItem({
    super.key,
    required this.date,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? const Color(0xFF0B4C8C) : Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        date,
        style: TextStyle(
          color: active ? Colors.white : Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}

class MobilCard extends StatelessWidget {
  final String title;
  final String location;
  final String time;

  const MobilCard({
    super.key,
    required this.title,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFF0B4C8C),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  time,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 16),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  location,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}