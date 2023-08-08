import 'package:flutter/material.dart';

class LandingNav extends StatelessWidget {
  const LandingNav({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade300],
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft),
            boxShadow: const [
              BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 1),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Paytm",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                height: 90,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.person_3_rounded,
                  size: 40,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
