import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_type.freezed.dart';

@freezed
class ViewType with _$ViewType {
  const factory ViewType.overview() = ViewTypeOverview;
  const factory ViewType.create() = ViewTypeCreate;
  const factory ViewType.update({
    required String id,
  }) = ViewTypeUpdate;
}
