import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startApp, {super.key});
  final void Function() startApp;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Paytm",
          style: TextStyle(
              color: Colors.blue.shade700,
              fontSize: 44,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/logo.png',
          // height: double.infinity,
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startApp,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start"),
        )
      ],
    );
  }
}
