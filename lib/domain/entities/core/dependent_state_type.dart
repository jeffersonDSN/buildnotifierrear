import 'package:freezed_annotation/freezed_annotation.dart';

part 'dependent_state_type.freezed.dart';

@freezed
class DependenteStateType<T> with _$DependenteStateType {
  const factory DependenteStateType.listing() = DependenteStateTypeListing;
  const factory DependenteStateType.reading({
    required T value,
  }) = DependenteStateTypeReading;
  const factory DependenteStateType.creating() = DependenteStateTypeCreating;
  const factory DependenteStateType.updating({
    required T value,
  }) = DependenteStateTypeUpdating;
  const factory DependenteStateType.loading() = DependenteStateTypeloading;
}

extension OnDependenteStateType on DependenteStateType {
  bool get isListing => this is DependenteStateTypeListing;
  bool get isReading => this is DependenteStateTypeReading;
  bool get isCreating => this is DependenteStateTypeCreating;
  bool get isUpdating => this is DependenteStateTypeUpdating;
  bool get isLoading => this is DependenteStateTypeloading;
}
