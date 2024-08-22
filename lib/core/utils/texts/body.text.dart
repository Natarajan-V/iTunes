import 'package:flutter/material.dart';

class AppBodyText extends StatelessWidget {
  final String? data;
  final TextAlign? textAlign;

  const AppBodyText({super.key, required this.data, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}
