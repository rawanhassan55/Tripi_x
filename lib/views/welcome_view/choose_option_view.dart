import 'package:flutter/material.dart';
import 'package:tripi_x/widgets/choose_button.dart';

class ChooseOptionScreen extends StatelessWidget {
  const ChooseOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Choose your option',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        ChooseButton(text: 'Driver'),
        const SizedBox(height: 25),
        ChooseButton(text: 'Passenger'),
      ],
    );
  }
}
