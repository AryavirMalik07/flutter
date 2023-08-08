import 'package:flutter/material.dart';
import 'package:paytm/home_screen.dart';
import 'package:paytm/landing_page.dart';

class Paytm extends StatefulWidget {
  const Paytm({super.key});
  @override
  State<Paytm> createState() {
    return _PaytmState();
  }
}

class _PaytmState extends State<Paytm> {
  var activeScreen = "start-screen";
  void switchScreen() {
    setState(() {
      activeScreen = "landing-page";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if (activeScreen == "landing-page") {
      setState(() {
        screenWidget = const LandingPage();
      });
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            // image: DecorationImage(
            //     image: AssetImage('assets/images/logo.png'), fit: BoxFit.cover),
          ),
          child: Center(child: screenWidget),
        ),
      ),
    );
  }
}
