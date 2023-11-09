import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageLeft extends StatelessWidget {
  const MessageLeft({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          padding: const EdgeInsets.all(15.0),
          constraints: BoxConstraints(maxWidth: Get.width * 0.8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Reçoit ma reconnaissance Seigneur 1une année de plus pour te dire merci Seigneur 🙌❤️❤️ Joyeux anniversaire à moi 🎉🎉🎉",
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
