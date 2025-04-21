import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey500,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboardType,
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
