import 'package:flutter/material.dart';
import 'package:wallet_app/core/utils/app_colors.dart';
import 'package:wallet_app/core/widgets/custom_button_widget.dart';
import 'package:wallet_app/core/widgets/custom_text_form_field_widget.dart';

class FormLoginWidget extends StatelessWidget {
  const FormLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextFormFieldWidget(
          label: 'البريد الإلكتروني',
          hint: 'example@email.com',
          icon: Icons.email_outlined,
          isPassword: false,
        ),
        const SizedBox(height: 20),
        CustomTextFormFieldWidget(
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
        CustomButtonWidget(text: 'تسجيل الدخول', onPressed: () {}),
      ],
    );
  }
}
