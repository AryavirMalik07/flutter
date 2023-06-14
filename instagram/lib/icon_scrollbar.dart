import 'package:flutter/material.dart';
import 'package:instagram/circular_icon.dart';

class IconsScroll extends StatelessWidget {
  const IconsScroll({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // width: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            HomeIcons("assets/images/logo.png", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img1.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img2.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img.jpeg", 40),
            SizedBox(
              width: 10,
            ),
            HomeIcons("assets/images/img.jpeg", 40),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget circularIcons() => Container(
        height: 60,
        width: 60,
        color: Colors.red,
      );
}
