import 'package:flutter/material.dart';

class AddStory extends StatelessWidget {
  const AddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          width: 125.0,
          height: 200.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage("assets/images/smile_bg.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 22.0,
                backgroundColor: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(50.0),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Text(
                "Add Story",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
