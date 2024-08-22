import 'package:flutter/material.dart';

class AppCaptionText extends StatelessWidget {
  final String? data;
  final TextAlign? textAlign;

  const AppCaptionText({super.key, required this.data, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}
