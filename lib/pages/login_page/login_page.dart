import 'package:flutter/material.dart';
import 'package:gym_app/utils/colors.dart';
import 'package:gym_app/utils/dimentions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.height30,
          vertical: Dimensions.height80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo Text
            Text(
              "FLITGYM",
              style: TextStyle(
                fontSize: 48,
                fontStyle: FontStyle.italic,
                color: Colors.white,
                height: 1.5,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 24),

            const Text(
              "Login to your account",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 32),

            // Username TextField
            TextField(
              decoration: InputDecoration(
                hintText: "Username",
                hintStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),

            // Password field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: const TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 8),

            // Forget password
            Align(
              alignment: Alignment.centerRight,
              //child: TextButton(onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
