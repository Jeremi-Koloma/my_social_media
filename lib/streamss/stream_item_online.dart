import 'package:flutter/material.dart';

class StreamItemOnline extends StatelessWidget {
  const StreamItemOnline({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 150.0,
      height: 205.0,
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          width: 150.0,
          height: 150.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage("assets/images/smile_bg.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Happy New - Year",
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4.0),
              Text("10:30 | Freedom Trail",
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.labelMedium),
            ],
          ),
        )
      ]),
    );
  }
}
