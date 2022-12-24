import 'package:flutter/material.dart';

import './homepage_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomepageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              width: 400,
              height: 400,
              child: Image.asset("assets/images/online_shopping_logo.png"),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
