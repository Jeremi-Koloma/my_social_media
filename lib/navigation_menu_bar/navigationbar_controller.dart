import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_social_media/chats/chats_page.dart';
import 'package:my_social_media/home/home_page.dart';
import 'package:my_social_media/profil/profil_page.dart';

class NavigationbarController extends GetxController {
  // une variable qui va retourné le menu selectionné par l'utilisateur
  final Rx<int> selectedIndex = 0.obs;

  // L'ecran
  final screens = [
    const HomePage(),
    Container(color: Colors.green),
    const ChatsPage(),
    const ProfilPage(),
  ];
}
