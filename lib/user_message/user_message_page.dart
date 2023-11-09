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
            title: Text(
              "Alyce Joyce",
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
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
      body: SafeArea(
        child: Stack(
          children: [
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 8.0, right: 8.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 0.3, color: Theme.of(context).primaryColor),
                  ),
                  color: Theme.of(context).canvasColor,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter your message...',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30.0)),
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
