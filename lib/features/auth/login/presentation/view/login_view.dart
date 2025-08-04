import 'package:flutter/material.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/body_login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BodyLoginWidget(),
      ),
    );
  }
}
