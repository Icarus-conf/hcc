import 'package:flutter/material.dart';
import 'package:hcc/features/auth/Login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LoginViewBody(),
      ),
    );
  }
}
