// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseItemImpl _$$ExpenseItemImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseItemImpl(
      title: json['title'] as String? ?? '',
      timeCardId: json['timeCardId'] as String? ?? '',
      expenseId: json['expenseId'] as String? ?? '',
      qtyHrs: (json['qtyHrs'] as num?)?.toDouble() ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ExpenseItemImplToJson(_$ExpenseItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'timeCardId': instance.timeCardId,
      'expenseId': instance.expenseId,
      'qtyHrs': instance.qtyHrs,
      'rate': instance.rate,
      'amount': instance.amount,
    };

_$ExpenseImpl _$$ExpenseImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseImpl(
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      issueDate: DateTime.parse(json['issueDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      paymentDate: json['paymentDate'] == null
          ? null
          : DateTime.parse(json['paymentDate'] as String),
      categoryId: json['categoryId'] ?? '',
      categoryName: json['categoryName'] ?? '',
      projectId: json['projectId'] as String? ?? '',
      taskId: json['taskId'] as String? ?? '',
      employeeId: json['employeeId'] as String? ?? '',
      creditCardId: json['creditCardId'] as String? ?? '',
      paymentMethod: json['paymentMethod'] == null
          ? PaymentMethodEnums.cash
          : const PaymentMethodConverter()
              .fromJson((json['paymentMethod'] as num).toInt()),
      paymentMethodCardId: json['paymentMethodCardId'] as String? ?? '',
      paymentMethodCardNumber: json['paymentMethodCardNumber'] as String? ?? '',
      status: json['status'] == null
          ? ExpenseStatusEnums.draft
          : const ExpenseStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ExpenseItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ExpenseImplToJson(_$ExpenseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'issueDate': instance.issueDate.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'paymentDate': instance.paymentDate?.toIso8601String(),
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'projectId': instance.projectId,
      'taskId': instance.taskId,
      'employeeId': instance.employeeId,
      'creditCardId': instance.creditCardId,
      'paymentMethod':
          const PaymentMethodConverter().toJson(instance.paymentMethod),
      'paymentMethodCardId': instance.paymentMethodCardId,
      'paymentMethodCardNumber': instance.paymentMethodCardNumber,
      'status': const ExpenseStatusConverter().toJson(instance.status),
      'items': instance.items,
    };
