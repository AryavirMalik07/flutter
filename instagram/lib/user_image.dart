import 'package:flutter/material.dart';
import 'package:instagram/circular_icon.dart';

class UserImages extends StatelessWidget {
  const UserImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeIcons("assets/images/img1.jpeg", 20),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [Text("hello"), Text("delhi")],
              ),
              SizedBox(
                width: 280,
              ),
              Icon(Icons.more_rounded)
            ],
          ),
        ),
        Image.asset('assets/images/img1.jpeg'),
        const SizedBox(
          height: 5,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.heart_broken),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.comment_bank_outlined),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.save_alt_outlined)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 410,
          child: Text(
            "Comments 267929 : Love this website and the fonts are awesome and the pic are very good.",
            style: TextStyle(color: Colors.grey.shade500),
            textAlign: TextAlign.left,
          ),
        )
      ],
    );
  }
}
