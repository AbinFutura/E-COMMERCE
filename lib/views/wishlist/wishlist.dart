import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        title: Text('Wishlist', style: TextStyle(fontSize: 30),),
        centerTitle: true,
        leading: Icon(Icons.favorite),
      ),

        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 180, width: 180, decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[50],
                  ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Item1", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          Text("Review", style: TextStyle(fontSize: 20),),
                          Text("price", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: () {},
                            child: Text("Add to cart"),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      );
  }
}
