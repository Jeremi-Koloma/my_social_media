import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_social_media/user_message/user_message_page.dart';

class OnlineUsers extends StatelessWidget {
  const OnlineUsers({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        Get.to(() => const UserMessagePage());
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 70.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/smile_bg.jpg"),
              child: Align(
                alignment: Alignment.bottomRight,
                child:
                    CircleAvatar(radius: 8, backgroundColor: Color(0xff4BDA64)),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              "Alice Joyce",
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
