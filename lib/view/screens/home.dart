import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/core/constants/enum.constants.dart';
import 'package:itunes/core/routes/route.gr.dart';
import 'package:itunes/core/styles/colors.style.dart';
import 'package:itunes/core/styles/dimenstions.style.dart';
import 'package:itunes/core/utils/buttons/primary_button.dart';
import 'package:itunes/core/utils/texts/body.text.dart';
import 'package:itunes/services/provider.dart';
import 'package:itunes/view/widgets/category.dart';
import 'package:itunes/view_model/logic.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  void _onSubmit() {
    final provider = ref.read(homeLogic);
    if (provider.controller.text.isEmpty) return;
    final route = ref.read(routeService);
    route.push(const ResultRoute(), context);
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.read(homeLogic);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(padding: Dimen.scaffoldMargin, children: [
        const Center(
          child: AppBodyText(data: 'Search for a variety of content'),
        ),
        const SizedBox(height: Dimen.space * 2),
        TextField(
          controller: provider.controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Search',
            filled: true,
            fillColor: AppColors.lightGrey.withOpacity(.5),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: AppColors.grey,
          ),
        ),
        const SizedBox(height: Dimen.space * 2),
        const AppBodyText(data: 'Browse by category'),
        const SizedBox(height: Dimen.space),
        Wrap(
          runSpacing: Dimen.space,
          spacing: Dimen.space,
          children: ItunesCategory.category.map((e) {
            return Category(data: e);
          }).toList(),
        ),
        const SizedBox(height: Dimen.space * 2),
        PrimaryButton(text: 'Submit', onTap: _onSubmit),
      ]),
    );
  }
}
