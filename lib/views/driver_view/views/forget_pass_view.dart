import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';
import 'package:tripi_x/views/driver_view/views/verify_email.dart';
import 'package:tripi_x/widgets/custom_button.dart';

class ForgetPassView extends StatefulWidget {
  const ForgetPassView({super.key});

  @override
  State<ForgetPassView> createState() => _ForgetPassViewState();
}

class _ForgetPassViewState extends State<ForgetPassView> {
  bool isEmailChecked = false;
  bool isPhoneChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forget Password",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset("assets/images/forgot-passwordd.png"),
            ),
            const SizedBox(height: 20),
            Center(
              child: const Text(
                "Please Enter Your E-mail Address To \n Recieve a verification code",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.info,
                  ),
                  child: const Center(
                    child: Text(
                      "@",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Continuing Via Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Your email linked to your account",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
                Checkbox(
                  value: isEmailChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isEmailChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.info,
                  ),
                  child: const Center(child: Icon(Icons.phone_android)),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Continuing Via Phone",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Your Phone linked to your account",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
                Checkbox(
                  value: isPhoneChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isPhoneChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            ChooseButton(
              text: "Just Send",
              fontSize: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VerifyEmail();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
