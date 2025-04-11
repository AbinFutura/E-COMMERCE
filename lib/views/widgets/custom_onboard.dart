import 'package:flutter/material.dart';


class OnboardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;



  const OnboardWidget({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Placeholder(child: Stack(children: [
      PageView(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ],
      ),
      Positioned(
        bottom: 180,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      )
    ]),);
  }
}
