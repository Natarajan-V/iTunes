import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itunes/model/api/api.dart';
import 'package:itunes/model/repository/repository.dart';
import 'package:itunes/view_model/home_notifier.dart';
import 'package:itunes/view_model/home_state.dart';
import 'package:itunes/services/provider.dart';

final _api = Provider<HomeApi>(
  (ref) => HomeApiImpl(apiService: ref.read(apiService)),
);

final _repository = Provider<HomeRepository>(
  (ref) => HomeRepositoryImpl(api: ref.read(_api)),
);

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(repository: ref.read(_repository)),
);
