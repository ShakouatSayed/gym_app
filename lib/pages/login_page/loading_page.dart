import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';

import '../home_page/navigation_bar.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ButtonNavigationBar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Big Text
            Text(
              "FLIT\nGYM",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
                letterSpacing: 2,
                height: 1.0,
              ),
            ),

            const SizedBox(height: 20),

            // Subtitle Text
            const Text(
              "Loading...",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
