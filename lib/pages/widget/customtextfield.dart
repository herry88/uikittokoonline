import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uikit/helpers/constans.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onchaged;
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onchaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return TextFormField(
      controller: controller,
      cursorColor: _theme.primaryColor,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
