// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceItemImpl _$$InvoiceItemImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceItemImpl(
      projectId: json['projectId'] as String? ?? '',
      taskId: json['taskId'] as String? ?? '',
      activityId: json['activityId'] as String? ?? '',
      productService: json['productService'] as String? ?? '',
      description: json['description'] as String? ?? '',
      qtyHrs: (json['qtyHrs'] as num?)?.toDouble() ?? 0,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$InvoiceItemImplToJson(_$InvoiceItemImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'taskId': instance.taskId,
      'activityId': instance.activityId,
      'productService': instance.productService,
      'description': instance.description,
      'qtyHrs': instance.qtyHrs,
      'rate': instance.rate,
      'amount': instance.amount,
    };

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      id: json['id'] as String? ?? '',
      issueDate: json['issueDate'] == null
          ? null
          : DateTime.parse(json['issueDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      clientId: json['clientId'] as String? ?? '',
      clientFirstName: json['clientFirstName'] as String? ?? '',
      clientlastName: json['clientlastName'] as String? ?? '',
      clientAddress: json['clientAddress'] as String? ?? '',
      clientAddress2: json['clientAddress2'] as String? ?? '',
      clientCity: json['clientCity'] as String? ?? '',
      clientState: json['clientState'] as String? ?? '',
      clientZipCode: json['clientZipCode'] as String? ?? '',
      customerMessage: json['customerMessage'] as String? ?? '',
      status: json['status'] == null
          ? InvoiceStatusEnums.draft
          : const InvoiceStatusConverter()
              .fromJson((json['status'] as num).toInt()),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'issueDate': instance.issueDate?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'clientId': instance.clientId,
      'clientFirstName': instance.clientFirstName,
      'clientlastName': instance.clientlastName,
      'clientAddress': instance.clientAddress,
      'clientAddress2': instance.clientAddress2,
      'clientCity': instance.clientCity,
      'clientState': instance.clientState,
      'clientZipCode': instance.clientZipCode,
      'customerMessage': instance.customerMessage,
      'status': const InvoiceStatusConverter().toJson(instance.status),
      'items': instance.items,
    };
