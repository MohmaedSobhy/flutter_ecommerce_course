import 'package:ecommerce_app/Feature/auth/presentation/views/login_screen_view_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginScreenViewBody(),
      ),
    );
  }
}
