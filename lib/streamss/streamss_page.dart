import 'package:flutter/material.dart';
import 'package:my_social_media/streamss/stream_item_online.dart';

class StreamssPage extends StatelessWidget {
  const StreamssPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ********************* SECTION POPULAR ************
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Popular",
                      style: textTheme.headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text("See All")),
                  ],
                ),
                const SizedBox(height: 15.0),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
                // ********************* SECTION EVENTS ************
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Events",
                      style: textTheme.headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text("See All")),
                  ],
                ),
                const SizedBox(height: 15.0),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
                // ********************* SECTION TRAVEL ************
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Travel",
                      style: textTheme.headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(onPressed: () {}, child: const Text("See All")),
                  ],
                ),
                const SizedBox(height: 15.0),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                      StreamItemOnline(),
                      SizedBox(width: 15.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
