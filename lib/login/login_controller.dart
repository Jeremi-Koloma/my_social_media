import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_social_media/navigation_menu_bar/navigation_menu_bar_page.dart';

class LoginController extends GetxController {
  // Variable de type pour affichier et cacher l'oeil du mots de passe
  RxBool showEyePassword = false.obs;
  // Variables Login pour l'enregistrement
  String email = "";
  String password = "";

  // Pour le contrôle des champs du formulaire, nous avons besoin d'un controller
  final formKey = GlobalKey<FormState>();

  // Une méthode pour valider l'email
  String? validateEmail(String? value) {
    // vérifions si la valeur(email) est vide
    if (value!.isEmpty) {
      return "Email is required !";
    }
    // Vérifions si l'email est valide
    if (!value.isEmail) {
      return "Email no valid !";
    }
    return null;
  }

  // une méthode pour enregistrer l'email
  void saveEmail(String? emailToSave) {
    email = emailToSave!;
  }

  // une méthode pour valider le mots de passe
  String? validatePassword(String? value) {
    // vérifions si le champs n'est pas vide
    if (value!.isEmpty) {
      return "Password is required !";
    }
    // Le mots de passe doit être supérieure à 6 chiffres
    if (value.length < 6) {
      return "Weak password !";
    }
    return null;
  }

  // une méthode pour enregistrer le mots de passe
  void savePassword(String? passwordToSave) {
    password = passwordToSave!;
  }

  // Une fonction pour la validation le formulaire Login
  validateLoginForm() {
    var isValid = formKey.currentState!.validate();
    // si les champs sont validés, on enregistre les données et on passe
    if (isValid) {
      formKey.currentState!.save();
      Get.off(() => const NavigationMenuBarPage());
    }
  }
}
