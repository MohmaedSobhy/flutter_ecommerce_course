import 'package:ecommerce_app/Feature/auth/presentation/screens/sign_up_screen.dart';
import 'package:ecommerce_app/Feature/auth/presentation/views/forget_button_view.dart';
import 'package:ecommerce_app/Feature/auth/presentation/views/login_card_form_fields.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_button.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_card_widget.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_row_text.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/google_icon_widget.dart';
import 'package:ecommerce_app/Feature/home/presentation/screens/main_screen.dart';
import 'package:ecommerce_app/core/routes/app_route.dart';
import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:flutter/material.dart';

class LoginCardView extends StatelessWidget {
  const LoginCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeCardWidget(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16.0),
        child: Column(
          children: [
            const LoginCardFormFields(),
            const ForgetButtonView(),
            const SizedBox(height: 20),
            CustomeButton(
              title: AppString.login,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            CustomeButton(
              title: AppString.signUpWithGoogle,
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(AppRoute.main, (route) => false);
              },
              icon: const GoogleIconWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomeRowText(
              message: AppString.dontHaveAccount,
              title: AppString.signUp,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }), (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
