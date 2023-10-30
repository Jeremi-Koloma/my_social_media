import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationbarController extends GetxController {
  // une variable qui va retourné le menu selectionné par l'utilisateur
  final Rx<int> selectedIndex = 0.obs;

  // L'ecran
  final screens = [
    Container(color: Colors.amber),
    Container(color: Colors.green),
    Container(color: Colors.purple),
    Container(color: Colors.grey),
  ];
}
