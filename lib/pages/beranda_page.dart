// pages/beranda_page.dart
import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Placeholder
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey[300],
            child: Center(
              child: Text(
                'Header Area',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Search Bar Placeholder
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.brown),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Mau cari kos dimana?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Section Title
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Kos di Sekitar Kamu',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Kos List Placeholder
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  margin: const EdgeInsets.only(left: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Kos Item ${index + 1}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
