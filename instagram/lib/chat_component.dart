import 'package:flutter/material.dart';
import 'package:instagram/circular_icon.dart';

class ChatCompo extends StatelessWidget {
  const ChatCompo(this.userImage, this.userName, this.userMessage, {super.key});
  final String userImage;
  final String userName;
  final String userMessage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeIcons(userImage, 30),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  userMessage,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
        const Icon(Icons.camera_alt_outlined)
      ],
    );
  }
}
