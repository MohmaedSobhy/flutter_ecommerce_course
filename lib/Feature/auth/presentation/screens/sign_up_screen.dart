import 'package:ecommerce_app/Feature/auth/presentation/views/sign_up_screen_view_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SignUpScreenViewBody(),
      ),
    );
  }
}
