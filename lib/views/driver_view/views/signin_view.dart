import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';
import 'package:tripi_x/widgets/custom_button.dart';
import 'package:tripi_x/widgets/sign_banner.dart';
import 'package:tripi_x/widgets/text_field.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SignInBanner(title: "Welcome Back!", subTitle: "Sign In"),
          SizedBox(height: 20),
          CustomTextField(
            hintText: "Enter Email Address",
            labelText: "Email Address",
          ),
          SizedBox(height: 10),
          CustomTextField(
            hintText: "Enter password",
            labelText: "Password",
            isPassword: true,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          ChooseButton(text: "Sign in"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              SizedBox(
                width: 120,
                child: Divider(thickness: 3, color: AppColors.grey300),
              ),
              Spacer(flex: 1),
              Text(
                "Or",
                style: TextStyle(fontSize: 16, color: AppColors.grey600),
              ),
              Spacer(flex: 1),
              SizedBox(
                width: 120,
                child: Divider(thickness: 3, color: AppColors.grey300),
              ),
              Spacer(flex: 2),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: AppColors.grey100,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey500,
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 120,
                height: 50,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/google.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Google",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: AppColors.grey100,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey500,
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 130,
                height: 50,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/facebook.png",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16, color: AppColors.grey600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
