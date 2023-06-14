import 'package:flutter/material.dart';
import 'package:instagram/chat_screen.dart';
import 'package:instagram/home_screen.dart';

class InstagramHome extends StatefulWidget {
  const InstagramHome({super.key});
  @override
  State<InstagramHome> createState() {
    return _InstagramState();
  }
}

class _InstagramState extends State<InstagramHome> {
  var activeScreen = "home-screen";
  void switchScreen() {
    setState(() {
      activeScreen = "message-screen";
    });
  }

  void switchScreen2() {
    setState(() {
      activeScreen = "home-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == "message-screen") {
      setState(() {
        screenWidget = ChatScreen(switchScreen2);
      });
    } else if (activeScreen == "home-screen") {
      setState(() {
        screenWidget = HomeScreen(switchScreen);
      });
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
