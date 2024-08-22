import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/model/repository/repository.dart';
import 'package:itunes/view_model/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final HomeRepository _repository;

  HomeNotifier({
    required HomeRepository repository,
  })  : _repository = repository,
        super(const HomeState.initial());

  Future<void> fetchData({required String term}) async {
    state = const HomeState.loading();

    final data = await _repository.fetchData(term);

    data.fold((l) => state = HomeState.error(e: l.msg), (r) {
      if ((r.results ?? []).isEmpty) return state = const HomeState.empty();
      state = HomeState.data(data: r.results ?? []);
    });
  }
}
