import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String label;
  final bool? isPassword;
  final String hint;
  final IconData icon;
  const CustomTextFormFieldWidget({
    super.key,
    required this.label,
    required this.isPassword,
    required this.hint,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          textAlign: TextAlign.right,
          obscureText: isPassword ?? false,
          cursorColor: Color(0xff4EB7F2),
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[400]),
            suffixIcon: Icon(icon, color: Colors.grey[500]),
            prefixIcon: isPassword ?? false
                ? Icon(Icons.visibility_off_outlined, color: Colors.grey[500])
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFF4EB7F2)),
            ),
          ),
        ),
      ],
    );
  }
}
