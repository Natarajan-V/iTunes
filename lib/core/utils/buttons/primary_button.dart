import 'package:flutter/material.dart';
import 'package:itunes/core/styles/border_radius.style.dart';
import 'package:itunes/core/styles/colors.style.dart';
import 'package:itunes/core/utils/texts/button.text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryButton extends ConsumerWidget {
  final String? text;
  final Color? color;
  final Color? fontColor;
  final Function onTap;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color = AppColors.primary,
    this.fontColor = AppColors.white,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget child = AppButtonText(data: text, color: fontColor);

    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: radius4),
      height: 50,
      elevation: 0,
      minWidth: MediaQuery.of(context).size.width,
      color: color,
      onPressed: () => onTap(),
      child: child,
    );
  }
}
