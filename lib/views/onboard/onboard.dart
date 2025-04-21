import 'package:e_commerce_project/utils/constants/images.dart';
import 'package:e_commerce_project/utils/constants/text.dart';
import 'package:e_commerce_project/views/auth/Signup_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/custom_onboard.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  int currentPage = 0; // Track the current page

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                OnboardWidget(
                    image: EImages.onboard1,
                    title: ETexts.onboardtitle,
                    subtitle: ETexts.onboardtitle1),
                OnboardWidget(
                    image: EImages.onboard2,
                    title: ETexts.onboardtitle2,
                    subtitle: ETexts.onboardtitle3),
                OnboardWidget(
                    image: EImages.onboard3,
                    title: ETexts.onboardtitle4,
                    subtitle: ETexts.onboardtitle5),
              ],
            ),
            Positioned(
              bottom: 140,

              left: MediaQuery.of(context).size.width * 0.45, // Adjust position
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: JumpingDotEffect(
                    activeDotColor: Colors.white, dotHeight: 10, dotWidth: 10),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20, // Position on the right
              child:SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,

                  child: ElevatedButton(onPressed: (){

                    if (currentPage < 2) {
                      // Check if not on the last page
                      pageController.animateToPage(
                        currentPage + 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                      // Navigate to the next screen or perform an action
                      // print("Last Page Reached!");
                      // Example: Navigator.push(...);
                    }

                  },
                      style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,),)),

                      child:const  Text('NEXT')))


            ),
          ],
        ),
      ),
    );
  }
}
