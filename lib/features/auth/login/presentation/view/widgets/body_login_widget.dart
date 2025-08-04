import 'package:flutter/material.dart';
import 'package:wallet_app/core/widgets/login_or_register_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/form_login_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/or_divider_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/user_circular_widget.dart';

class BodyLoginWidget extends StatelessWidget {
  const BodyLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 40), 
          UserCircularWidget(),
          const SizedBox(height: 40),
          FormLoginWidget(),
          const SizedBox(height: 30),
          OrDividerWidget(),
          const SizedBox(height: 20),
          LoginOrRegisterWidget(),
        ],
      ),
    );
  }
}
