import 'package:flutter/material.dart';
import 'dart:async';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Latar belakang putih langsung tanpa gradient
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 200,
          height: 200,
          errorBuilder: (context, error, stackTrace) {
            return const Text("Logo not found!", style: TextStyle(color: Colors.red));
          },
        ),
      ),
    );
  }
}
