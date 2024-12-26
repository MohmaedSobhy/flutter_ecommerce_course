import 'package:ecommerce_app/Feature/auth/presentation/views/login_card_view.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/sliver_app_title.dart';
import 'package:ecommerce_app/core/widgets/sliver_sized_box_height.dart';
import 'package:flutter/material.dart';

class LoginScreenViewBody extends StatelessWidget {
  const LoginScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverSizedBoxHeight(height: 24),
        SliverAppTitle(),
        SliverSizedBoxHeight(height: 24),
        SliverToBoxAdapter(
          child: LoginCardView(),
        ),
      ],
    );
  }
}
