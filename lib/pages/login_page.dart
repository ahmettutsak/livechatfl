import 'package:chatlive/components/gap.dart';
import 'package:chatlive/components/my_button.dart';
import 'package:chatlive/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.message,
                  size: 96,
                ),
                const Gap(size: 10),
                const Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 24),
                ),
                const Gap(size: 10),
                MyTextField(
                  title: "Email:",
                  isPass: false,
                  controller: emailController,
                ),
                const Gap(size: 10),
                MyTextField(
                  title: "Password:",
                  isPass: true,
                  controller: passController,
                ),
                const Gap(size: 10),
                MyButton(title: "Sign In", onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
