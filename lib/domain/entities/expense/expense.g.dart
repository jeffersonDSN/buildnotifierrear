// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseItemImpl _$$ExpenseItemImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseItemImpl(
      productService: json['productService'] as String? ?? '',
      description: json['description'] as String? ?? '',
      timeCardId: json['timeCardId'] as String? ?? '',
      expenseId: json['expenseId'] as String? ?? '',
      qtyHrs: (json['qtyHrs'] as num?)?.toDouble() ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ExpenseItemImplToJson(_$ExpenseItemImpl instance) =>
    <String, dynamic>{
      'productService': instance.productService,
      'description': instance.description,
      'timeCardId': instance.timeCardId,
      'expenseId': instance.expenseId,
      'qtyHrs': instance.qtyHrs,
      'rate': instance.rate,
      'amount': instance.amount,
    };

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      name: json['name'] as String,
      fileExtension: const FileExtensionConverter()
          .fromJson((json['fileExtension'] as num).toInt()),
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fileExtension':
          const FileExtensionConverter().toJson(instance.fileExtension),
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
      categoryTitle: json['categoryTitle'] ?? '',
      projectId: json['projectId'] as String? ?? '',
      projectName: json['projectName'] as String? ?? '',
      taskId: json['taskId'] as String? ?? '',
      taskTitle: json['taskTitle'] as String? ?? '',
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
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
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
      'categoryTitle': instance.categoryTitle,
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'taskId': instance.taskId,
      'taskTitle': instance.taskTitle,
      'employeeId': instance.employeeId,
      'creditCardId': instance.creditCardId,
      'paymentMethod':
          const PaymentMethodConverter().toJson(instance.paymentMethod),
      'paymentMethodCardId': instance.paymentMethodCardId,
      'paymentMethodCardNumber': instance.paymentMethodCardNumber,
      'status': const ExpenseStatusConverter().toJson(instance.status),
      'items': instance.items,
      'attachments': instance.attachments,
    };
