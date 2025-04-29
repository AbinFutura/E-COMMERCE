import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Image.asset(
                      EImages.details1,
                      height: 220,
                      width: 220,
                    ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(

                          width: double.infinity,
                          decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
                child: SizedBox(
                  height: double.infinity,
                  child: ListView.builder(
                      itemCount:50,
                      itemBuilder: (context, _){
                    return Text("HI");
                  }),
                ),
                        ),
            ),
          )
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';
//
// class ProductDetailsPage extends StatelessWidget {
//   final String imageUrl;
//   final String productName;
//   final String productDescription;
//
//   const ProductDetailsPage({
//     super.key,
//     required this.imageUrl,
//     required this.productName,
//     required this.productDescription,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 300,
//             pinned: false,
//             floating: false,
//             snap: false,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Image.network(
//                 imageUrl,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             automaticallyImplyLeading: false,
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     productName,
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     productDescription,
//                     style: Theme.of(context).textTheme.bodyLarge,
//                   ),
//                   const SizedBox(height: 500),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Text("More stuff here..."),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
