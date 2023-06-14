import 'package:flutter/material.dart';
import 'package:instagram/data/img_data.dart';

class HomeIcons extends StatelessWidget {
  const HomeIcons(this.imageSource, this.dimension, {super.key});
  final String imageSource;
  final double dimension;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: CircleAvatar(
        radius: dimension,
        backgroundImage: AssetImage(imageSource),
      ),
    );
  }
}
