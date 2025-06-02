import 'package:e_commerce_project/providers/product_providers.dart';
import 'package:e_commerce_project/views/product/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final productAsync= ref.watch(productListProvider);
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
            const Row(
              children: [
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Special Offers",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("See More", style: TextStyle(color: Colors.green)),
              ],
            ),
            const SizedBox(height: 20),

            SizedBox(
              height: 250,
              child: productAsync.when(data: (products) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.products!.length,
                
                
                itemBuilder: (context,index){

                final product = products.products![index];
                final offer=double.parse(
                        (product.price! - (product.price! * product.discountPercentage! / 100)).toStringAsFixed(2));
                final totalReviews = product.reviews!.length;
                //final comment = product.reviews![0].comment;
                
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsPage(imageUrl: product.thumbnail!, productName: product.title!,
                     productDescription: product.description!,price: product.price!,
                     offerPrice: offer,discountPercentage: product.discountPercentage!,
                     rating: product.rating!,totalReviews: totalReviews,)));
                    
                  },
                  
                  child: specialOfferCard(context,product.title!,offer, product.price!, product.rating!,totalReviews, product.thumbnail!,product.discountPercentage!));
                

                }), error: (err, stack) => Center(child: Text('Error: $err')), loading: () => const Center(child: CircularProgressIndicator()),)
              
              
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



  static Widget specialOfferCard(BuildContext context, name,double offerPrice, double price,
      double rating, int reviews, String imagePath, double discountPercentage) {
    return Container(
      width: 160,
    
      
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
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
                    image: NetworkImage(imagePath),
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
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius:  BorderRadius.only(topLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                  ),
                  child:  Text('$discountPercentage %',
                      style: const TextStyle(color: Colors.white, fontSize: 12)),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(name, overflow:TextOverflow.ellipsis,style: const TextStyle(fontWeight: FontWeight.bold)),
    
          Text('\$$offerPrice', style: const TextStyle(fontWeight: FontWeight.bold)),
          Text('\$$price',
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
    );
  }

  static Widget categoryCard(String label, IconData icon, Color color) {
    return GestureDetector(
      onTap: () {
        
      },
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
