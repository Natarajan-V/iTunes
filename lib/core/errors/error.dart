import 'package:flutter/material.dart';
import 'package:itunes/core/utils/assets/assets.dart';
import 'package:itunes/core/utils/texts/caption.text.dart';
import 'package:itunes/core/widgets/image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorWidget extends ConsumerWidget {
  final String? msg;

  const ErrorWidget({super.key, this.msg});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      KAssetImage(image: Assets.error, size: width * .75),
      AppCaptionText(data: msg, textAlign: TextAlign.center),
    ]);
  }
}
