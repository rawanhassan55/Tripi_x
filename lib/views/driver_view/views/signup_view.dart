import 'package:flutter/material.dart';
import 'package:tripi_x/widgets/sign_banner.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SignInBanner(title: "Create Your Account", subTitle: "Sign Up"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
