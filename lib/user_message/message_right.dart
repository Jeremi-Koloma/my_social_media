import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageRight extends StatelessWidget {
  const MessageRight({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerRight,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          padding: const EdgeInsets.all(15.0),
          constraints: BoxConstraints(maxWidth: Get.width * 0.8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Encore joyeux anniversaire !",
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "05:17 PM",
                style: textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
