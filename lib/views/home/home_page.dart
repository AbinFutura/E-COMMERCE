import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.camera_alt_outlined),
                      hintText: 'Search candles',
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.notifications_none),
              ],
            ),
            const SizedBox(height: 20),

            // Address
            Row(
              children: const [
                Icon(Icons.location_on_outlined, size: 20),
                SizedBox(width: 5),
                Text(
                  'Deliver to 3517 W. Gray St. Utica, Pennsyl...',
                  style: TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(height: 25),

            // Banner
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/homepage/Promotional Banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green,
                      ),
                      child: const Text("Shop Now"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),

            // Special Offers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Special Offers",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("See More", style: TextStyle(color: Colors.green)),
              ],
            ),
            const SizedBox(height: 20),

            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  specialOfferCard("EKERÖ", "\$230.00", "\$512.58", "4.9", 256,
                      "assets/images/homepage/image 4.png"),
                  specialOfferCard("STRANDMON", "\$274.13", "\$856.60", "4.8",
                      256, "assets/images/homepage/image 9.png"),
                  specialOfferCard("PLATTLANS", "\$24.99", "\$69.99", "4.9",
                      256, "assets/images/homepage/image 17.png"),
                  specialOfferCard("MALM", "\$50.99", "\$69.99", "4.9", 128,
                      "assets/images/homepage/image 18.png"),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Categories
            const Text("Shop by Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Wrap(
              spacing: 30,
              runSpacing: 10,
              children: [
                categoryCard(
                    "Outdoor", Icons.outdoor_grill, Colors.green[100]!),
                categoryCard("Appliances", Icons.tv, Colors.blue[100]!),
                categoryCard("Furniture", Icons.chair, Colors.amber[100]!),
                categoryCard("See More", Icons.more_horiz, Colors.grey[100]!),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget specialOfferCard(String name, String price, String oldPrice,
      String rating, int reviews, String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text("45% OFF",
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(oldPrice,
                style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey)),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Colors.amber),
                const SizedBox(width: 4),
                Text("$rating ($reviews)",
                    style: const TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget categoryCard(String label, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 165,
        height: 150,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30),
            const SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
