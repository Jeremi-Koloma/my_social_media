import 'package:flutter/material.dart';
import 'package:my_social_media/home/post_card.dart';
import 'package:my_social_media/home/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xffF1F2F6),
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Color(0xffAFB5C6)),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xffAFB5C6),
                  ),
                ),
                border: InputBorder.none),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              size: 32.0,
              color: Color(0xffAFB5C6),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Stories",
                      style: textTheme.headlineLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stories(),
                      SizedBox(width: 15.0),
                      Stories(),
                      SizedBox(width: 15.0),
                      Stories(),
                      SizedBox(width: 15.0),
                      Stories(),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const PostCard(),
                const SizedBox(height: 10.0),
                const PostCard(),
                const SizedBox(
                  height: 25.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
