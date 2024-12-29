import 'dart:math';

import 'package:ecommerce_app/Feature/auth/presentation/screens/forget_screen.dart';
import 'package:ecommerce_app/Feature/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/Feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_app/Feature/home/data/model/product_model.dart';
import 'package:ecommerce_app/Feature/home/presentation/screens/main_screen.dart';
import 'package:ecommerce_app/Feature/product%20details/presentation/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

import 'base_route.dart';

abstract class AppRoute {
  static const String login = "/login";
  static const String signUp = "/signUp";
  static const String forgotPassword = "/forgotPassword";
  static const String main = "/main";
  static const String detailsScreen = "/details";
  static const String editName = "/editName";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case signUp:
        return BaseRoute(pageBuilder: (_, __, ___) {
          return const SignUpScreen();
        });
      case forgotPassword:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) {
            return const ForgetScreen();
          },
        );
      case detailsScreen:
        return BaseRoute(
          pageBuilder: (_, __, ___) {
            return ProductDetailsScreen(
              productModel: settings.arguments as ProductModel,
            );
          },
        );
      case main:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) {
            return const MainScreen();
          },
        );
    }
    return null;
  }
}
