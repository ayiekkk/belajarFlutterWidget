import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget item(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Divider()
        ],
      ),
    );
  }

  Widget statusBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        "Sudah Lunas",
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "No. NOP 370429748920904337",
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 10),

                const Text(
                  "AHMAD NABIL BAHROIN\nROGER SUMATRA",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Alamat Lengkap WP : Kab Bantul, Kec. Sewon, DS. Ngireng-ireng, RT01/RW01",
                  style: TextStyle(fontSize: 14),
                ),

                const Divider(height: 30),

                item("Lokasi", "DS. Ngireng-ireng, RT01/RW01"),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Status",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 6),
                      statusBadge(),
                      const Divider()
                    ],
                  ),
                ),

                item("Denda", "Rp. 0"),
                item("NJOP Bumi", "Rp. 300,000"),
                item("NJOP Bangunan", "Rp. 0"),
                item("Luas Bumi", "227m"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}