import 'package:ecommerce_app/core/utils/app_string.dart';
import 'package:ecommerce_app/core/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          controller: TextEditingController(),
          labelText: AppString.name,
          keyboardType: TextInputType.name,
        ),
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
          labelText: AppString.password,
          keyboardType: TextInputType.visiblePassword,
          isSecured: true,
          suffIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility_off),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
