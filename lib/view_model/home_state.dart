import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itunes/model/model/itune.model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeStateInitial;
  const factory HomeState.loading() = _HomeStateLoading;
  const factory HomeState.data({required List<Tune> data}) = _HomeStateData;
  const factory HomeState.empty() = _HomeStateEmpty;
  const factory HomeState.error({String? e}) = _HomeStateError;
}
