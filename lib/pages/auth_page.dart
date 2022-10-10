import 'package:fire_auth/pages/login_page.dart';
import 'sign_up_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  void toggle() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) =>
      isLogin ? LoginPage(onClickedSignIn: toggle) : SignUpPage(onClickedSignIn: toggle,);
}
