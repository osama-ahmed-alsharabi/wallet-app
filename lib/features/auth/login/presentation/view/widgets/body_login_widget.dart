import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wallet_app/core/utils/app_colors.dart';
import 'package:wallet_app/core/widgets/login_or_register_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/form_login_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/or_divider_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view/widgets/user_circular_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_state.dart';

class BodyLoginWidget extends StatelessWidget {
  const BodyLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return PopScope(
          canPop: state is LoginLoading,
          child: ModalProgressHUD(
            inAsyncCall: state is LoginLoading,
            progressIndicator: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
            child: SingleChildScrollView(
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
            ),
          ),
        );
      },
    );
  }
}
