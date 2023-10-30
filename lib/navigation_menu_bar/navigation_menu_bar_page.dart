import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_social_media/navigation_menu_bar/navigationbar_controller.dart';

class NavigationMenuBarPage extends StatelessWidget {
  const NavigationMenuBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Créeons une instance de notre controller
    final controller = Get.put(NavigationbarController());
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          height: 80.0,
          //elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.ondemand_video_sharp), label: "Streams"),
            NavigationDestination(
                icon: Icon(Icons.message_outlined), label: "Messages"),
            NavigationDestination(
                icon: Icon(Icons.person_outline), label: "Profil"),
          ],
        );
      }),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
    );
  }
}
