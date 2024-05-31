import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependent_state_type.freezed.dart';

@freezed
class DependenteStateType with _$DependenteStateType {
  const factory DependenteStateType.listing() = DependenteStateTypeListing;
  const factory DependenteStateType.reading() = DependenteStateTypeReading;
  const factory DependenteStateType.creating() = DependenteStateTypeCreating;
  const factory DependenteStateType.updating() = DependenteStateTypeUpdating;
  const factory DependenteStateType.loading() = DependenteStateTypeloading;
}
