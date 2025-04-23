import 'package:flutter/material.dart';
import 'package:tripi_x/splash_view.dart';
//import 'package:tripi_x/splash_view.dart';
import 'package:tripi_x/styles/themes.dart';
import 'package:tripi_x/views/passenger_view/views/login_view.dart';
// import 'package:tripi_x/views/welcome_view/first_view.dart';

void main() {
  runApp(Tripix());
}

class Tripix extends StatelessWidget {
  const Tripix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
