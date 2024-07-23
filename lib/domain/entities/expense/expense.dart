import 'package:buildnotifierrear/domain/entities/converters/expense_status_converter.dart';
import 'package:buildnotifierrear/domain/entities/converters/payment_method_converter.dart';
import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
class ExpenseItem with _$ExpenseItem {
  factory ExpenseItem({
    @Default('') String productService,
    @Default('') String description,
    @Default('') String timeCardId,
    @Default('') String expenseId,
    @Default(0) double qtyHrs,
    @Default(0) double rate,
    @Default(0) double amount,
  }) = _ExpenseItem;

  factory ExpenseItem.fromJson(Map<String, Object?> json) =>
      _$ExpenseItemFromJson(json);
}

extension OnExpenseItemList on List<ExpenseItem> {
  List<Map<String, dynamic>> toJson() {
    return map((item) => item.toJson()).toList();
  }
}

@freezed
class Expense with _$Expense {
  const factory Expense({
    @Default('') String id,
    @Default('') String description,
    required DateTime issueDate,
    DateTime? dueDate,
    DateTime? paymentDate,
    @Default('') categoryId,
    @Default('') categoryTitle,
    @Default('') String projectId,
    @Default('') String taskId,
    @Default('') String employeeId,
    @Default('') String creditCardId,
    @PaymentMethodConverter()
    @Default(PaymentMethodEnums.cash)
    PaymentMethodEnums paymentMethod,
    @Default('') String paymentMethodCardId,
    @Default('') String paymentMethodCardNumber,
    @ExpenseStatusConverter()
    @Default(ExpenseStatusEnums.draft)
    ExpenseStatusEnums status,
    @Default([]) List<ExpenseItem> items,
  }) = _Expense;

  factory Expense.fromJson(Map<String, Object?> json) =>
      _$ExpenseFromJson(json);
}

extension OnExpense on Expense {
  double get total {
    return items.isNotEmpty
        ? items.map((item) => item.amount).reduce((a, b) => a + b)
        : 0;
  }
}
