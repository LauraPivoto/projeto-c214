import 'package:flutter/material.dart';

class CustomSnackbar {
  // Função estática para exibir o SnackBar
  static void showSuccessMessage(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating, // Faz o SnackBar flutuar
      margin: EdgeInsets.only(top: 50.0), // Alinha a mensagem na parte superior
      backgroundColor: Colors.green,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
