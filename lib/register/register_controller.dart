import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController {
  // une variable de type pour afficher et cacher le mots de passe
  RxBool showPasswordEye = false.obs;

  // une variable pour accepter les terms des conditions
  RxBool isAgreeWithTerms = false.obs;

  // Pour le contrôle des champs du formulaire, nous avons besoin d'un controller
  final formKey = GlobalKey<FormState>();

  // variables
  String username = "";
  String email = "";
  String password = "";

  // un controller pour prendre le controle du mots de passe saisi pour faire le test
  var passwordCTRL = TextEditingController();

  // une fonction pour valider le username
  String? validateUsername(String? username) {
    // vérifier si le username est vide
    if (username!.isEmpty) {
      return "Username is required !";
    }
    // vérifier si le username est inferieur à 4 chiffres
    if (username.length < 4) {
      return "Weak username !";
    }
    return null;
  }

  // une fonction pour enregistrer l'email
  void saveUsername(String? usernameToSave) {
    username = usernameToSave!;
  }

  // une fonction pour valider l'émail
  String? validateEmail(String? email) {
    // vérifier si l'email est vide
    if (email!.isEmpty) {
      return "Email is required !";
    }

    // vérifier si l'email est valide
    if (!email.isEmail) {
      return "Email deosn't valide !";
    }
    return null;
  }

  // une fonction pour enregistrer l'email
  void saveEmail(String? emailToSave) {
    email = emailToSave!;
  }

  // Une méthode pour valider le mots de passe
  String? validatePassword(String? password) {
    // vérifier si le champs n'est pas vide
    if (password!.isEmpty) {
      return "Password is required !";
    }
    // vérifier si le mots de passe est faible
    if (password.length < 6) {
      return "Weak password !";
    }
    return null;
  }

  // une fonction pour enregister le mots de passe
  void savePassword(String? passwordToSave) {
    password = passwordToSave!;
  }

  // Une méthode pour la validation du mots de passe confirme
  String? validateConfirmPassword(String? passwordConfirm) {
    // vérifier si le champs n'est pas vide
    if (passwordCTRL.text != passwordConfirm) {
      return "Password doesn't match !";
    }
    return null;
  }

  // Une fonction pour valider le register
  validateRegisterForm() {
    var isRegistred = formKey.currentState!.validate();
    // vérifier s'il s'est inscrit, on enregistre les données
    if (isRegistred) {
      formKey.currentState!.save();
      print("---- REGISTRER OKAY ---");
    }
  }
}
