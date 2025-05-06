import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height *0.25,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors:[Color.fromARGB(255, 15, 104, 70),Color.fromRGBO(18, 76, 54, 1),Color.fromRGBO(11, 114, 74, 1),] )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('My Account',style: TextStyle(fontSize: 18,color: Colors.white),),
                      
                      Icon(Icons.notifications,color: Colors.white,)
                      
                    
                      
                    ],),
                  ),
                ),
               
                Container(
                  width: double.infinity,
                  height:MediaQuery.sizeOf(context).height *0.75,
                  color: Colors.white,
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                       const  SizedBox(height: 80,),
                       const  Text("General",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        customProfileMenu(const Icon(Icons.receipt_outlined),'Transactions'),
                         customProfileMenu(const Icon(Icons.favorite_outline_rounded),'Wish List'),
                          customProfileMenu(const Icon(Icons.bookmark_border),'Saved Address'),
                           customProfileMenu(const Icon(Icons.payment_rounded),'Payment Methods'),
                            customProfileMenu(const Icon(Icons.notifications_none_sharp),'Notifications'),
                             customProfileMenu(const Icon(Icons.lock_open_rounded),'Security'),
                             SizedBox(height: 10,),
                               const  Text("Help",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              customProfileMenu(const Icon(Icons.person_2_outlined),'Get in Touch With Us'),  
        
                      ],
                    ),
                  )
                )
                
              ],
            ),
           
              
             Positioned(
              top: 160,
              right: 10,
              left: 10,
               child: SizedBox(
                height: 100,
                width: 400,
                child: Card( color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage(EImages.profile),
                        radius: 35,
                        
                      ),
                     // SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
        
                          Text("Clarie Cooper",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("clarieacooper@gamil.com"),
                          
                        ],
                      ),
                      Icon(Icons.library_add_check_outlined),
                    ],
                  ),
                ),
                
                ),
               ),
             ),
        
          
          ],
        ),
      )
    );
  }

  // Account page menu list

  Widget  customProfileMenu(Icon lIcon , String title ) {
    return Card(
                      color: Colors.white,
                      elevation: 5,
                      child: ListTile(
                        leading: lIcon,
                        title:  Text(title,style: TextStyle(fontWeight: FontWeight.w300),),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp,size: 18,),
                      ),
                    );
  }
}