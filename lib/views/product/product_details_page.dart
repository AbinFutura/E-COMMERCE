


import 'package:e_commerce_project/models/cart_item_model.dart';
import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:e_commerce_project/views/cart/cart_item.dart';
import 'package:e_commerce_project/views/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productDescription;
  final double price;
  final double offerPrice;
  final double discountPercentage;
  final double rating;
  final int totalReviews;


   ProductDetailsPage({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.productDescription,
    required this.price, required this.offerPrice, required this.discountPercentage, required this.rating, required this.totalReviews
  });

  final int starLength = 5;
  //List<CartItem> cartItems = [];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: false,
            floating: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Text(
                        '\$$offerPrice',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        '\$$price',
                        style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                      ),),
                      Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                  ),
                  child:  Text('$discountPercentage %',
                      style: const TextStyle(color: Colors.white, fontSize: 12)),
                ),

                    ],
                  ),

                  Row(
            children: [
               StarRating(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      length: starLength,
                                      rating: rating,
                                      between: 2,
                                      starSize: 20,
                                      color: Colors.amberAccent,
                                    ),
              const SizedBox(width: 4),
              Text("$rating ($totalReviews)",
                  style: const TextStyle(fontSize: 12)),
            ],
          ),
                
                  Text(
                    productDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 200),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(border:const Border(
                                               top: BorderSide(color: AppColor.primaryColor),
                                               right:BorderSide(color: AppColor.primaryColor),
                                               left: BorderSide(color: AppColor.primaryColor),
                                               bottom: BorderSide(color: AppColor.primaryColor) ),
                                               borderRadius: BorderRadius.circular(8)),
                        child:Center(
                          child: IconButton(onPressed: (){

                          }, icon: const Icon(Icons.favorite_outline,color:AppColor.primaryColor,)),
                        )                       

                      ),
                      const Expanded(child: SizedBox()),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child:  ElevatedButton(onPressed: (){
                          final newItem = CartItem(
     name: productName,
      imageUrl: imageUrl,
      price: price,
      offerPrice: offerPrice,
      discountPercentage: discountPercentage,
    );

    cartItems.add(newItem);
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
                        },
                        
                         style:ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: AppColor.primaryColor),
                              
                             child: const Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16))),
                      ),
                    ],
                  ),
                 
                  const SizedBox(height: 200,),
                 
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
