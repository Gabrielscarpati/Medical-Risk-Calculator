import 'package:flutter/material.dart';

class ShowSnackBar  {
  BuildContext context;

  ShowSnackBar({required this.context});

  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.green,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message,

      ),
      backgroundColor: backgroundColor,
    ));
  }

  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}
