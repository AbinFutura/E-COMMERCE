// import 'package:e_commerce_project/utils/constants/colors.dart';
// import 'package:e_commerce_project/utils/constants/images.dart';
// import 'package:flutter/material.dart';
//
// class CartPage extends StatelessWidget {
//   const CartPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "My Cart",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(
//                       Icons.notifications_none,
//                       size: 30,
//                       color: Colors.black,
//                     ))
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Stack(children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 width: MediaQuery.of(context).size.height * 0.5,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(20)),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.grey.withValues(alpha: 0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3))
//                     ]),
//                 child: Row(
//                   children: [
//                     Image.asset(
//                       EImages.cart1,
//                       height: 150,
//                       width: 150,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           "EKERO",
//                           style: TextStyle(color: Colors.black, fontSize: 20),
//                         ),
//                         Text(
//                           "\$230.00",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20),
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               "\$512.58",
//                               style: TextStyle(
//                                   decoration: TextDecoration.lineThrough,
//                                   fontSize: 18),
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               height:
//                                   MediaQuery.of(context).size.height * 0.024,
//                               width: MediaQuery.of(context).size.height * 0.07,
//                               decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.only(
//                                       bottomRight: Radius.circular(10),
//                                       topLeft: Radius.circular(10))),
//                               child: Center(
//                                   child: Text(
//                                 "45% OFF",
//                                 style: TextStyle(color: Colors.white),
//                               )),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "Yellow",
//                           style: TextStyle(fontSize: 18, color: Colors.grey),
//                         ),
//                         Row(
//                           children: [
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.favorite_border,
//                                   color: Colors.grey,
//                                 )),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.04,
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               decoration: BoxDecoration(
//                                   color: Colors.transparent,
//                                   border: Border.all(color: Colors.grey),
//                                   borderRadius: BorderRadius.circular(15)),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(
//                                         Icons.remove,
//                                         color: AppColor.primaryColor,
//                                       )),
//                                   Text(
//                                     "1",
//                                     style: TextStyle(color: Colors.black),
//                                   ),
//                                   TextButton(
//                                       onPressed: () {},
//                                       child: Icon(
//                                         Icons.add,
//                                         color: AppColor.primaryColor,
//                                       ))
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ])
//           ],
//         ),
//       ),
//     ));
//   }
// }



import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
   CartPage({super.key});

  final List<Map<String, dynamic>> cartItems =  [
    {
      "title": "EKERO",
      "price": 230.00,
      "oldPrice": 512.58,
      "discount": "45% OFF",
      "color": "Yellow",
      "image": EImages.cart1,
    },
    {
      "title": "PLATTANS",
      "price": 24.99,
      "oldPrice": 69.99,
      "discount": "45% OFF",
      "color": "Yellow",
      "image": EImages.cart3,
    },
    {
      "title": "STRANDMON",
      "price": 274.13,
      "oldPrice": 856.60,
      "discount": "45% OFF",
      "color": "Grey",
      "image": EImages.cart2,
    },
    {
      "title": "MALM",
      "price": 139.99,
      "oldPrice": 512058,
      "discount": "45% OFF",
      "color": "Yellow",
      "image": EImages.cart4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:  EdgeInsets.all(15),
          child: Column(
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Cart",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Cart Items List
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartItems[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),

                              blurRadius: 3,
                              offset: const Offset(0, 3),
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              item['image'],
                              height: 150,
                              width: 150,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  Text(
                                    "\$${item['price']}",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$${item['oldPrice']}",
                                        style: const TextStyle(
                                          decoration:
                                          TextDecoration.lineThrough,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          item['discount'],
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    item['color'],
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Container(
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.04,
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.3,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border:
                                          Border.all(color: Colors.grey),
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.remove,
                                                color: AppColor.primaryColor,
                                              ),
                                            ),
                                            const Text(
                                              "1",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.add,
                                                color: AppColor.primaryColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
