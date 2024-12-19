import 'package:ecommerce_app/Feature/auth/presentation/views/card_input_fields_view.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/sliver_sized_box_height.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_string.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverSizedBoxHeight(height: 24),
        SliverToBoxAdapter(
          child: Text(
            AppString.welcome,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SliverSizedBoxHeight(height: 24),
        SliverToBoxAdapter(
          child: CardInputFieldsView(),
        ),
      ],
    );
  }
}
