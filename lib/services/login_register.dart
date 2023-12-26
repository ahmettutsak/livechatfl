import 'package:chatlive/pages/login_page.dart';
import 'package:chatlive/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool _isLogin = true;

  void setIsLogin() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLogin) {
      return LoginPage(
        onTap: setIsLogin,
      );
    } else {
      return RegisterPage(
        onTap: setIsLogin,
      );
    }
  }
}
