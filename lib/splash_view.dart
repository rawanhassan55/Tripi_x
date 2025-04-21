import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';
import 'package:tripi_x/views/welcome_view/first_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstView()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: _animation,
            child: CircleAvatar(
              radius: 130,
              child: CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage('assets/icons/iconn.png'),
              ),
            ),
          ),
          SizedBox(height: 100),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 5,
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                  backgroundColor: AppColors.grey500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
