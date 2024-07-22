import 'package:buildnotifierrear/domain/entities/enums/expense_status_enums.dart';
import 'package:json_annotation/json_annotation.dart';

class ExpenseStatusConverter implements JsonConverter<ExpenseStatusEnums, int> {
  const ExpenseStatusConverter();

  @override
  ExpenseStatusEnums fromJson(int value) {
    switch (value) {
      case 0:
        return ExpenseStatusEnums.draft;
      case 1:
        return ExpenseStatusEnums.pending;
      case 2:
        return ExpenseStatusEnums.approved;
      case 3:
        return ExpenseStatusEnums.partiallyPaid;
      case 4:
        return ExpenseStatusEnums.paid;
      case 5:
        return ExpenseStatusEnums.overdue;
      case 6:
        return ExpenseStatusEnums.cancelled;
      case 7:
        return ExpenseStatusEnums.refunded;
      default:
        return ExpenseStatusEnums.draft;
    }
  }

  @override
  int toJson(ExpenseStatusEnums value) {
    switch (value) {
      case ExpenseStatusEnums.draft:
        return 0;
      case ExpenseStatusEnums.pending:
        return 1;
      case ExpenseStatusEnums.approved:
        return 2;
      case ExpenseStatusEnums.partiallyPaid:
        return 3;
      case ExpenseStatusEnums.paid:
        return 4;
      case ExpenseStatusEnums.overdue:
        return 5;
      case ExpenseStatusEnums.cancelled:
        return 6;
      case ExpenseStatusEnums.refunded:
        return 7;
      default:
        return 0;
    }
  }
}
