import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? onChanged;
  final TextEditingController? controller;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool? obscureText;

  const ReusableTextField({
    Key? key,
    this.minLines,
    this.maxLines,
    this.hintText,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.prefixIcon,
    this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon!.icon,
                color: const Color.fromRGBO(29, 41, 57, 1),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon!.icon,
                color: const Color.fromRGBO(29, 41, 57, 1),
              )
            : null,
        fillColor: Colors.white,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 2,
        ),
        hintStyle: const TextStyle(
          color: Color.fromRGBO(152, 162, 179, 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(208, 213, 221, 1),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: Color.fromRGBO(105, 147, 255, 1),
            width: 1.0,
          ),
        ),
      ),
      style: const TextStyle(color: Colors.black),
      controller: controller,
      validator: onChanged,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      autofocus: false,
    );
  }
}
