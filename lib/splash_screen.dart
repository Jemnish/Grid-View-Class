import 'dart:async';

import 'package:flutter/material.dart';

import 'grid_view_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => GridViewScreen()),
      ),
    );

    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome Jenish',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
