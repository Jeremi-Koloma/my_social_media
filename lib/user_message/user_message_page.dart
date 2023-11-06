import 'package:flutter/material.dart';
import 'package:my_social_media/user_message/message_left.dart';
import 'package:my_social_media/user_message/message_right.dart';

class UserMessagePage extends StatelessWidget {
  const UserMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        title: SizedBox(
          width: double.infinity,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage("assets/images/smile_bg.jpg"),
            ),
            title: const Text(
              "Alye Joyce",
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "Online",
              style: textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_call))
        ],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MessageLeft(),
              MessageRight(),
              MessageLeft(),
              MessageRight(),
              MessageLeft(),
              MessageRight(),
              MessageLeft(),
              MessageRight(),
              MessageLeft(),
              MessageRight(),
              MessageLeft(),
              MessageRight(),
            ],
          ),
        ),
      ),
    );
  }
}
