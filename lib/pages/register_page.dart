import 'package:chatlive/components/gap.dart';
import 'package:chatlive/components/my_button.dart';
import 'package:chatlive/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confPassController = TextEditingController();
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
                  "Welcome!",
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
                MyTextField(
                  title: "Confirm Password:",
                  isPass: true,
                  controller: confPassController,
                ),
                const Gap(size: 10),
                MyButton(title: "Sign Up", onTap: () {}),
                const Gap(size: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?"),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
