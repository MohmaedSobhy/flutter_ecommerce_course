import 'package:ecommerce_app/Feature/auth/presentation/views/sign_up_card_view.dart';
import 'package:ecommerce_app/Feature/auth/presentation/widget/sliver_app_title.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/sliver_sized_box_height.dart';

class SignUpScreenViewBody extends StatelessWidget {
  const SignUpScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverSizedBoxHeight(height: 24),
        SliverAppTitle(),
        SliverSizedBoxHeight(height: 24),
        SliverToBoxAdapter(
          child: SignUpCardView(),
        ),
      ],
    );
  }
}
