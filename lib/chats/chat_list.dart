import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_social_media/user_message/user_message_page.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        Get.to(() => const UserMessagePage());
      },
      child: ListTile(
        leading: const CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage("assets/images/smile_bg.jpg"),
        ),
        title: Text(
          "Elien Lambert",
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          "What kind of music do you like ? I guess",
          overflow: TextOverflow.ellipsis,
          style: textTheme.bodySmall,
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("06:58 PM"),
            CircleAvatar(
              radius: 12,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text(
                "3",
                style: textTheme.labelMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
