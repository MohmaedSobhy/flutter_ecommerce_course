import 'package:ecommerce_app/Feature/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/Feature/auth/presentation/views/sign_up_form_field.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_button.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_card_widget.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_row_text.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/google_icon_widget.dart';
import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class SignUpCardView extends StatelessWidget {
  const SignUpCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeCardWidget(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16.0),
        child: Column(
          children: [
            const SignUpFormField(),
            CustomeButton(title: AppString.signUp, onTap: () {}),
            const SizedBox(height: 20),
            CustomeButton(
              title: AppString.signUpWithGoogle,
              onTap: () {},
              icon: const GoogleIconWidget(),
            ),
            const SizedBox(height: 20),
            CustomeRowText(
              message: AppString.haveAccount,
              title: AppString.login,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }), (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
