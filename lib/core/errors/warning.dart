import 'package:flutter/material.dart';
import 'package:itunes/core/styles/dimenstions.style.dart';
import 'package:itunes/core/utils/assets/assets.dart';
import 'package:itunes/core/utils/texts/sub_body.text.dart';
import 'package:itunes/core/widgets/image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WarningWidget extends ConsumerWidget {
  final String? msg;

  const WarningWidget({super.key, this.msg});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: Dimen.horizontalMargin,
        child: KAssetImage(image: Assets.warning),
      ),
      AppSubBodyText(
        data: 'Something went wrong 😑',
        maxLines: 3,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
