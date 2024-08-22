import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:itunes/core/utils/texts/body.text.dart';

class KAssetImage extends StatelessWidget {
  final String image;
  final double? size;

  const KAssetImage({super.key, required this.image, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: size,
      width: size,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) => child,
      errorBuilder: (context, object, stackTrace) => const Center(
        child: Icon(Icons.error),
      ),
    );
  }
}

class KMemoryImage extends StatelessWidget {
  final Uint8List image;

  const KMemoryImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      image,
      fit: BoxFit.cover,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) => child,
      errorBuilder: (context, object, stackTrace) => const Center(
        child: AppBodyText(data: 'Error !'),
      ),
    );
  }
}
