import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/helpers/api_helper.dart';
import 'package:wallet_app/features/auth/login/data/imp/login_imp.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/body_login_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            LoginCubit(LoginImp(apiHelper: ApiHelper(dio: Dio()))),
        child: SafeArea(child: BodyLoginWidget()),
      ),
    );
  }
}
