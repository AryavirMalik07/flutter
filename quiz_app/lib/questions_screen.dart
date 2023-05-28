import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Text(
      "QuestionScreen",
      style: TextStyle(fontSize: 30, color: Colors.deepOrange),
    );
  }
}
