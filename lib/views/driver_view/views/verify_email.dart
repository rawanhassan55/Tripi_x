import 'package:flutter/material.dart';
import 'package:tripi_x/views/driver_view/views/create_pass_view.dart';
import 'package:tripi_x/widgets/custom_button.dart';

class VerifyEmail extends StatelessWidget {
  VerifyEmail({super.key});
  final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
  );
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Verify Your Email",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset("assets/images/two-ver.png"),
            ),
            Center(
              child: const Text(
                "Please Enter 4 Digit Code Sent To You",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  width: 45,
                  height: 45,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        focusNodes[index + 1].requestFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            ChooseButton(
              text: "Verify",
              fontSize: 18,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreatePassView();
                    },
                  ),
                );
              },
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
