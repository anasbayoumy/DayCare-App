import 'package:flutter/material.dart';

class CustomtextfieldNorm extends StatelessWidget {
  final String hint;
  final Widget prefixIcon;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool isEmail;
  final bool isPassword;
  final Widget? suffixIcon;

  const CustomtextfieldNorm(
      {super.key,
      required this.hint,
      required this.prefixIcon,
      required this.myController,
      required this.valid,
      required this.isNumber,
      required this.isEmail,
      required this.isPassword,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : isEmail
              ? TextInputType.emailAddress
              : isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.text,
      validator: valid,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: isPassword ? suffixIcon : null,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
