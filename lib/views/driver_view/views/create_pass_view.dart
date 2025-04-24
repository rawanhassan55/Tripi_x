import 'package:flutter/material.dart';
import 'package:tripi_x/widgets/custom_button.dart';
import 'package:tripi_x/widgets/text_field.dart';

class CreatePassView extends StatelessWidget {
  const CreatePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Create New Password",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset("assets/images/secure-login.png"),
          ),
          CustomTextField(
            hintText: "Enter New Password",
            isPassword: true,
            labelText: 'New Password',
          ),
          const SizedBox(height: 5),
          CustomTextField(
            hintText: "Enter Password Again",
            isPassword: true,
            labelText: 'Confirm Password',
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ChooseButton(
              text: "Save",
              onPressed: () {
                // Handle password creation logic here
              },
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
