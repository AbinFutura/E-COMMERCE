import 'package:e_commerce_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body:Column(
        children: [
          Stack(
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
              ),
              Positioned(
                bottom: -15,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,))
            ],
          )
        ],
      )
    );
  }
}