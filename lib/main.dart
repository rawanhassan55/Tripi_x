import 'package:flutter/material.dart';
import 'package:tripi_x/views/welcome_view/first_view.dart';

void main() {
  runApp(const Tripix());
}

class Tripix extends StatelessWidget {
  const Tripix({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
