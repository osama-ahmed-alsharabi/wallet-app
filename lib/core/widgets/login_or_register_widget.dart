import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_colors.dart';

class LoginOrRegisterWidget extends StatelessWidget {
  const LoginOrRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'سجل الآن',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text('ليس لديك حساب؟', style: TextStyle(color: Colors.grey[600])),      
      ],
    );
  }
}
