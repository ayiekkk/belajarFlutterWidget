import 'package:flutter/material.dart';

class PBBPage extends StatelessWidget {
  const PBBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text("PBB"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // SEARCH
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Masukkan NOP....",
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // CARD BELUM LUNAS
            const PBBCard(
              year: "SPPT 2021",
              address: "DS. Ngreng-ireng RT01/RW01",
              object: "NJOP Bumi dan Bangunan",
              price: "200.000",
              status: "Belum lunas",
              statusColor: Colors.red,
            ),

            const SizedBox(height: 12),

            // CARD LUNAS
            const PBBCard(
              year: "SPPT 2020",
              address: "DS. Ngreng-ireng RT01/RW01",
              object: "NJOP Bumi dan Bangunan",
              price: "376.000",
              status: "Lunas",
              statusColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class PBBCard extends StatelessWidget {
  final String year;
  final String address;
  final String object;
  final String price;
  final String status;
  final Color statusColor;

  const PBBCard({
    super.key,
    required this.year,
    required this.address,
    required this.object,
    required this.price,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Column(
        children: [

          // HEADER STATUS
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  year,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
          ),

          // BODY
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [

                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, size: 16),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        address,
                        style: const TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(Icons.info_outline, size: 16),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        object,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0B4C8C),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Lihat Detail",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}