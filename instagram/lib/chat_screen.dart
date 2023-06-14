import 'package:flutter/material.dart';
import 'package:instagram/chat_component.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen(this.switchScreen, {super.key});
  void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: switchScreen,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "aryavirmalik7",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 24),
                      ),
                    ],
                  ),
                  const Icon(Icons.shortcut_outlined)
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "messages",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ChatCompo("assets/images/img2.jpeg", "harshil", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img1.jpeg", "shubham rana ", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "panwar", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img1.jpeg", "dhankar", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "khokhar", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "dhaiya", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "aeron", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img1.jpeg", "akshat", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img.jpeg", "vishal", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "prateek", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/logo.png", "kunal", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                  ChatCompo("assets/images/img2.jpeg", "khushal", "hii"),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
