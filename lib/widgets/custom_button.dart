import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.fontSize,
  });
  final String text;
  final VoidCallback? onPressed;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 180,
      height: 45,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Theme.of(context).colorScheme.primary,
      onPressed: () {
        onPressed?.call();
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
