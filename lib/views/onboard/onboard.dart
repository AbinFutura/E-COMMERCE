import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView(
                children: [
                  Column(
                    children: [
                      Image.asset(EImages.onboard1, height: 300, width: 300),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Online Home Store\n     and Grocery ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Discover all style and budgets of",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "furniture,appliances,kitchen,and more",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "from 500+ brand in your hand",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "NEXT",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
