import 'package:flutter/material.dart';

class SnackBarHelper {
  static snackBarHelper(String text, Color color, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(textAlign: TextAlign.end, text),
      ),
    );
  }
}
