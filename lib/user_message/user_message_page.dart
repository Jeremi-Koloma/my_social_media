import 'package:flutter/material.dart';

class UserMessagePage extends StatelessWidget {
  const UserMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.0,
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
      body: const Center(
        child: Text(
          'Your message here...',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
