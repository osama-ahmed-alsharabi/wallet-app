import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/helpers/validator_helper.dart';
import 'package:wallet_app/core/utils/app_colors.dart';
import 'package:wallet_app/core/widgets/custom_button_widget.dart';
import 'package:wallet_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_cubit.dart';
import 'package:wallet_app/features/auth/login/presentation/view_model/login/login_state.dart';
import 'package:wallet_app/features/home/presentation/view/home_view.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({super.key});

  @override
  State<FormLoginWidget> createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
          );
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: Form(
        key: formkey,
        autovalidateMode: autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextFormFieldWidget(
              validator: ValidatorHelper.validateEmail,
              controller: emailController,
              label: 'البريد الإلكتروني',
              hint: 'example@email.com',
              icon: Icons.email_outlined,
              isPassword: false,
            ),
            const SizedBox(height: 20),
            CustomTextFormFieldWidget(
              validator: ValidatorHelper.validatePassword,
              controller: passwordController,
              label: 'كلمة المرور',
              hint: '********',
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButtonWidget(
              text: 'تسجيل الدخول',
              onPressed: () async {
                if (formkey.currentState!.validate()) {
                  BlocProvider.of<LoginCubit>(context).login(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
