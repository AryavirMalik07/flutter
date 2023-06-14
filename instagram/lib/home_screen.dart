import 'package:flutter/material.dart';
import 'package:instagram/circular_icon.dart';
import 'package:instagram/icon_scrollBar.dart';
import 'package:instagram/user_image.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(this.switchScreen, {super.key});
  // var activeScreen = "home-screen";
  void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Instagram",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: switchScreen,
                        child: const Icon(
                          Icons.messenger_outline_outlined,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const IconsScroll(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
                const SizedBox(
                  height: 10,
                ),
                const UserImages(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
