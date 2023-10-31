import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
//import 'package:my_social_media/login/login_page.dart';
import 'package:my_social_media/navigation_menu_bar/navigation_menu_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.light),
        useMaterial3: true,
      ),
      home: const NavigationMenuBarPage(),
    );
  }
}
