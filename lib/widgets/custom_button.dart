import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 180,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Theme.of(context).colorScheme.primary,
      onPressed: () {
        onPressed?.call();
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
