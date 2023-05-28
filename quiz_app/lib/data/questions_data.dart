import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    "what are the main building blocks of flutter UIs?",
    ['Widgets', 'components', 'Blocks', 'Functions'],
  ),
  QuizQuestion(
    "How are Flutter UIs built?",
    [
      'By combining Widgets in code',
      'By combining Widgets in a editor',
      'By defining Widgets in config file',
      'By using Xcode for ios and Android Studio Widgets for android'
    ],
  ),
  QuizQuestion(
    "Whats the purpose of a StateFulWidget",
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depends on data'
    ],
  ),
];
