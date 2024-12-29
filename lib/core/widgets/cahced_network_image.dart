import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custome_cirlce_progress_indicator.dart';

class CustomeCahcedNetworkImage extends StatelessWidget {
  final String url;
  const CustomeCahcedNetworkImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      height: 250,
      width: double.infinity,
      imageUrl: url,
      placeholder: (context, url) => const SizedBox(
        height: 200,
        child: CustomCircleProgIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
