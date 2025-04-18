import 'package:flutter/material.dart';
import 'package:tripi_x/views/welcome_view/welcome_view.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgrounds/bg5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to TripiX',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Your journey starts here',
                  style: TextStyle(fontSize: 25, color: Colors.white70),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
