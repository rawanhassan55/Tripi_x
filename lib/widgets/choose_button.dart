import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      width: 170,
      height: 50,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
