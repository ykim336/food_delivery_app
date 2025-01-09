// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: const SizedBox(height: 25)),
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          Text(
            'Food Delivery App',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 25),
          CustomTextfield(
            controller: emailController,
            hintText: 'Email:',
            obscureText: false,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            controller: passwordController,
            hintText: 'Password:',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          CustomTextfield(
            controller: confirmController,
            hintText: 'Confirm Password:',
            obscureText: true,
          ),
          const SizedBox(height: 10),
          CustomButton(
            onTap: () {},
            text: "Sign Up",
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: widget.onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.01,
                    color: Colors.blueGrey[900],
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Login now',
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.01,
                    color: Colors.blueGrey[900],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: const SizedBox(height: 25)),
        ],
      ),
    );
  }
}
