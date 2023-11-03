import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return ListTile(
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
      trailing: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("06:58 PM"),
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.deepPurple,
            child: Text("2"),
          )
        ],
      ),
    );
  }
}
