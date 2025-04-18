import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tripi_x/views/welcome_view/choose_option_view.dart';
import 'package:tripi_x/views/welcome_view/onboarding_view.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Map<String, String>> onboardingData = [
    {
      'title': 'Features overview',
      'description':
          'Book Car Services Easily\n Find & Track Transport Anytime\n Manage Your Trips & Vehicles in One Place',
    },
    {
      'title': 'Benefits of the application',
      'description':
          ' Save Time & Effort – Book car services or transport in seconds\n\n  Smart Navigation – Easy access to nearby services with map view',
    },
    {
      'title': 'Get started',
      'description': 'Let\'s get started on how to learn about our TripiX app',
    },
  ];
  final List<String> localImages = const [
    "assets/images/backgrounds/bg1.jpg",
    "assets/images/backgrounds/bg2.jpg",
    "assets/images/backgrounds/bg4.jpg",
    "assets/images/backgrounds/bg6.jpg",
  ];
  String getRandomAsset() {
    return localImages[Random().nextInt(localImages.length)];
  }

  final PageController _controller = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final randomImage = localImages[Random().nextInt(localImages.length)];
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset(randomImage, fit: BoxFit.cover)),
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: onboardingData.length + 1,
            itemBuilder: (context, index) {
              if (index == onboardingData.length) {
                return const ChooseOptionScreen();
              }
              return OnboardingPage(
                title: onboardingData[index]['title']!,
                description: onboardingData[index]['description']!,
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child:
                _currentPage > 0
                    ? IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        _controller.previousPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeInOut,
                        );
                      },
                    )
                    : const SizedBox(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child:
                _currentPage < onboardingData.length
                    ? IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                        );
                      },
                    )
                    : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
