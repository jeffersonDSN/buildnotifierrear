import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_category.freezed.dart';
part 'expense_category.g.dart';

@freezed
class ExpenseCategory with _$ExpenseCategory {
  factory ExpenseCategory({
    @Default('') String id,
    @Default('') String title,
    @Default(false) system,
  }) = _ExpenseCategory;

  factory ExpenseCategory.fromJson(Map<String, Object?> json) =>
      _$ExpenseCategoryFromJson(json);
}
