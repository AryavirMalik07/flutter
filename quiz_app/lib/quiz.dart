import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

// class Quiz extends StatefulWidget {
//   const Quiz({super.key});
//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   Widget? activeScreen;
//   @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = const QuestionsScreen();
//     });
//   }

//   @override
//   Widget build(context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color.fromARGB(255, 62, 24, 106),
//               Color.fromARGB(255, 72, 19, 141)
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           child: Center(child: activeScreen),
//         ),
//       ),
//     );
//   }
// }

// method 2 for rendering the screen
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 62, 24, 106),
                Color.fromARGB(255, 72, 19, 141)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Center(
              child: activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionsScreen(),
            )),
      ),
    );
  }
}
