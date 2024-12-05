import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;

  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onTap: onTap,
      readOnly: onTap != null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2), // Replace AppColors.grey
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: prefixIcon,
        ),
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 18), // Replace AppColors.grey
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: suffixIcon,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          borderSide: BorderSide(color: Colors.grey, width: 0.5), // Replace AppColors.grey
        ),
      ),
    );
  }
}
