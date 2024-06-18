import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class State with _$State {
  const factory State({
    required String id,
    required String abbreviation,
    required String name,
  }) = _State;

  factory State.fromJson(Map<String, Object?> json) => _$StateFromJson(json);
}
