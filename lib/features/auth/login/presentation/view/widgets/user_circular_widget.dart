
import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_colors.dart';

class UserCircularWidget extends StatelessWidget {
  const UserCircularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withAlpha(70),
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.person, size: 50, color: AppColors.primaryColor),
    );
  }
}
