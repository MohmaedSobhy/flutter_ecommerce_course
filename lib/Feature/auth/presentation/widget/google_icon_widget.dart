import 'package:flutter/material.dart';

class GoogleIconWidget extends StatelessWidget {
  const GoogleIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('images/social.png'),
      fit: BoxFit.cover,
      width: 25,
      height: 25,
    );
  }
}
