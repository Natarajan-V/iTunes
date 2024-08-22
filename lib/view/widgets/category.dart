import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/core/constants/enum.constants.dart';
import 'package:itunes/core/widgets/chip.dart';
import 'package:itunes/view_model/logic.dart';

class Category extends ConsumerWidget {
  final ItunesCategory data;
  const Category({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(homeLogic);
    final logic = ref.watch(homeLogic);

    return ManualChip(
      label: data.value,
      onPressed: () => provider.onCategory(data),
      isSelected: logic.selectedCategories.contains(data),
    );
  }
}
