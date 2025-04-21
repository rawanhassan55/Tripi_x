import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';

class SignInBanner extends StatelessWidget {
  const SignInBanner({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.primary, // Dark blue
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(200), // Curve on bottom right only
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 20, color: AppColors.grey100)),
          SizedBox(height: 8),
          Text(
            subTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
