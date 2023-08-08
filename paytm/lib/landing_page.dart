import 'package:flutter/material.dart';
import 'package:paytm/landing_nav.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LandingNav(),
      ],
    );
  }
}
