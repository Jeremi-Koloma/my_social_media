import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_social_media/chats/chat_list.dart';
import 'package:my_social_media/chats/online_users.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 72.0,
        title: Text(
          'Messages',
          style: textTheme.headlineLarge,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.userPlus),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ONLINE USERS",
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      OnlineUsers(),
                      OnlineUsers(),
                      OnlineUsers(),
                      OnlineUsers(),
                      OnlineUsers(),
                      OnlineUsers(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Chats",
                      style: textTheme.headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.plus),
                        label: const Text("New Chat"))
                  ],
                ),
                const SizedBox(height: 8),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList(),
                const ChatList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
