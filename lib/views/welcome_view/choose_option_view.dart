import 'package:flutter/material.dart';
import 'package:tripi_x/views/driver_view/views/signin_view.dart';
import 'package:tripi_x/widgets/custom_button.dart';

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
        ChooseButton(
          text: 'Driver',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SigninView()),
            );
          },
        ),
        const SizedBox(height: 25),
        ChooseButton(text: 'Passenger'),
      ],
    );
  }
}
