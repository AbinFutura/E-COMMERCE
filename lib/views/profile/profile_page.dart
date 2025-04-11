import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body:Stack(
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      SizedBox(height: 80,),
                      Text("General",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
                    Icon(Icons.library_add_check_outlined)
                  ],
                ),
              ),
              
              ),
             ),
           ),


        ],
      )
    );
  }
}