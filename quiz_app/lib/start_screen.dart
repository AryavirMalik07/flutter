import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  final img = 'assets/images/quiz-logo.png';
  void fun() {}
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          img,
          width: 300,
          color: const Color.fromARGB(155, 190, 189, 189),
        ),
        // Opacity(
        //   opacity: .5,
        //   child: Image.asset(
        //     img,
        //     width: 300,
        //   ),
        // ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Let's Start the Quiz!",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start"))
      ],
    );
  }
}
