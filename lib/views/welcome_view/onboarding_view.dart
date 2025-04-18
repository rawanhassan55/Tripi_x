import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 227, 226, 226),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
