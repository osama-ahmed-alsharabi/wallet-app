import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const CustomButtonWidget({
    super.key, this.onPressed, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:  AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 0,
      ),
      child:  Text(
       text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}