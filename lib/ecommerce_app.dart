import 'package:ecommerce_app/Feature/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const LoginScreen(),
    );
  }
}
