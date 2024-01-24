import 'package:flutter/material.dart';

class EditProfilController {
  // un controller pour prendre le controle du mots de passe saisi pour faire le test
  var getUserInput = TextEditingController();

  // Pour le contrôle des champs du formulaire, nous avons besoin d'un controller
  final formKey = GlobalKey<FormState>();
}
