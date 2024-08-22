import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/core/alerts/loader.dart';
import 'package:itunes/core/styles/border_radius.style.dart';
import 'package:itunes/core/styles/colors.style.dart';
import 'package:itunes/core/styles/dimenstions.style.dart';
import 'package:itunes/view/widgets/tile.dart';
import 'package:itunes/view_model/logic.dart';
import 'package:itunes/view_model/provider.dart';

@RoutePage()
class ResultPage extends ConsumerStatefulWidget {
  const ResultPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResultPageState();
}

class _ResultPageState extends ConsumerState<ResultPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    final provider = ref.read(homeLogic);
    provider.setTabController = TabController(length: 2, vsync: this);
    Future.microtask(() async => await _fetchData());
    provider.tabController.addListener(() => setState(() {}));
    super.initState();
  }

  Future<void> _fetchData() async {
    final notifier = ref.refresh(homeNotifier.notifier);
    final provider = ref.read(homeLogic);
    String term = provider.controller.text;
    if (provider.selectedCategories.isNotEmpty) {
      // term = term + '&media=';
    }
    await notifier.fetchData(term: term);
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.read(homeLogic);
    final state = ref.watch(homeNotifier);

    return Scaffold(
      appBar: AppBar(title: const Text('iTunes'), centerTitle: true),
      body: state.maybeWhen(
        orElse: () => const Loader(),
        data: (data) => ListView(padding: Dimen.scaffoldMargin, children: [
          TabBar(
            controller: provider.tabController,
            dividerHeight: 0,
            indicator: BoxDecoration(
              color: AppColors.grey.withOpacity(.5),
              borderRadius: radius4,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.black,
            tabs: const [Tab(text: 'Grid Layout'), Tab(text: 'List Layout')],
          ),
          const SizedBox(height: Dimen.space),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: provider.tabController.index == 0 ? 2 : 1,
              childAspectRatio: provider.tabController.index == 0 ? 3.5 : 7,
              mainAxisSpacing: Dimen.space,
              crossAxisSpacing: Dimen.space,
            ),
            itemBuilder: (_, i) {
              return TuneTile(data: data[i]);
            },
            itemCount: data.length,
          ),
        ]),
        empty: () => Container(),
      ),
    );
  }
}
