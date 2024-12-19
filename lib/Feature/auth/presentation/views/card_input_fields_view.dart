import 'package:ecommerce_app/Feature/auth/presentation/views/forget_button_view.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_button.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/custome_card_widget.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/google_icon_widget.dart';
import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:ecommerce_app/core/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';

class CardInputFieldsView extends StatelessWidget {
  const CardInputFieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeCardWidget(
      child: Padding(
        padding: const EdgeInsetsDirectional.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: TextEditingController(),
              labelText: AppString.email,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              labelText: AppString.password,
              isSecured: true,
              suffIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ForgetButtonView(),
            const SizedBox(height: 20),
            CustomeButton(
              title: AppString.login,
              onTap: () {},
            ),
            const SizedBox(height: 20),
            CustomeButton(
              title: AppString.signUpWithGoogle,
              onTap: () {},
              icon: const GoogleIconWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
