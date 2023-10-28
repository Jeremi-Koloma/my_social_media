import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Variable de type pour affichier et cacher l'oeil du mots de passe
  RxBool showEyePassword = false.obs;


  // Pour le contrôle des champs du formulaire, nous avons besoin d'un controller
  final formKey = GlobalKey<FormState>();
}
