import 'dart:html' as html;

import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_date_input_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/add_item/finance_invoice_edit_add_item.dart';
import 'package:buildnotifierrear/presentation/finance/invoice/edit/bloc/finance_invoice_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/finance/core/invoice_pdf.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinanceInvoiceEditView extends IView {
  final CrudType crudType;

  const FinanceInvoiceEditView({
    super.key,
    required this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceInvoiceEditBloc>(context);

    bloc.add(
      FinanceInvoiceEditEvent.load(
        crudType: crudType,
      ),
    );

    return BlocBuilder<FinanceInvoiceEditBloc, FinanceInvoiceEditState>(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          color: AppColor.lightColor,
          child: state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (
              crudType,
              invoice,
              clients,
            ) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  SizedBox(
                    height: Sizes.size64,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              appBloc(context).add(
                                const AppEvent.goBack(),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(Sizes.size8),
                                child: PopupMenuButton(
                                  position: PopupMenuPosition.under,
                                  tooltip: '',
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Sizes.size4,
                                          ),
                                          color: AppColor.green,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size8,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  context.tr.save,
                                                  style: const TextStyle(
                                                    color: AppColor.lightColor,
                                                  ),
                                                ),
                                              ),
                                              const Icon(
                                                Icons.check,
                                                color: AppColor.lightColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        bloc.add(
                                          FinanceInvoiceEditEvent.save(
                                            callback: () {
                                              appBloc(context).add(
                                                const AppEvent.goBack(),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                    PopupMenuItem(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Sizes.size4,
                                          ),
                                          color: AppColor.primaryColorSwatch,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size8,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  context.tr.shareWithClient,
                                                  style: const TextStyle(
                                                    color: AppColor.lightColor,
                                                  ),
                                                ),
                                              ),
                                              const Icon(
                                                Icons.share,
                                                color: AppColor.lightColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    PopupMenuItem(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Sizes.size4,
                                          ),
                                          color: AppColor.red,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            Sizes.size8,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  context.tr.downloadPDF,
                                                  style: const TextStyle(
                                                    color: AppColor.lightColor,
                                                  ),
                                                ),
                                              ),
                                              const Icon(
                                                Icons.file_download_outlined,
                                                color: AppColor.lightColor,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      onTap: () async {
                                        bloc.add(
                                          FinanceInvoiceEditEvent.save(
                                            callback: () async {
                                              var pdfData = await InvoicePdf(
                                                invoice: invoice,
                                                buildContext: context,
                                              ).buildPdf();

                                              final blob = html.Blob(
                                                [pdfData],
                                                'application/pdf',
                                              );

                                              final url = html.Url
                                                  .createObjectUrlFromBlob(
                                                blob,
                                              );

                                              html.AnchorElement(href: url)
                                                ..setAttribute(
                                                  "download",
                                                  "invoice.pdf",
                                                )
                                                ..click();

                                              html.Url.revokeObjectUrl(url);

                                              appBloc(context).add(
                                                const AppEvent.goBack(),
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                  child: Container(
                                    width: Sizes.size112,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Sizes.size4,
                                      ),
                                      color: AppColor.primaryColorSwatch,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                        Sizes.size8,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              context.tr.actions,
                                              style: const TextStyle(
                                                color: AppColor.lightColor,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.keyboard_arrow_down,
                                            color: AppColor.lightColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size16),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.tr.status,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      invoice.status.name(context),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    gapHeight16,
                                    Text(
                                      '${context.tr.invoice} #',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      invoice.id,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BaseDateInputWidget(
                                      label: context.tr.dueDate,
                                      value: invoice.dueDate,
                                      onPressedChangeDate: () async {
                                        var date = await getDate(context);

                                        if (date != null) {
                                          bloc.add(
                                            FinanceInvoiceEditEvent.changeDate(
                                              date: date,
                                            ),
                                          );
                                        }
                                      },
                                      onChangeDate: (value) {
                                        bloc.add(
                                          FinanceInvoiceEditEvent.changeDate(
                                            date: value,
                                          ),
                                        );
                                      },
                                    ),
                                    BaseDropdownButtonField(
                                      label: context.tr.client,
                                      value: invoice.clientId,
                                      items: [
                                        DropdownItem(
                                          value: '',
                                          title: '',
                                        ),
                                        ...clients.map((client) {
                                          return DropdownItem(
                                            value: client.id,
                                            title:
                                                '${client.firstName} ${client.lastName}',
                                          );
                                        }),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            FinanceInvoiceEditEvent
                                                .changeClient(
                                              clientId: value,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    gapHeight8,
                                    Text(
                                      invoice.clientAddress,
                                    ),
                                    Text(
                                      invoice.clientAddress2,
                                    ),
                                    Text(
                                      invoice.clientCity,
                                    ),
                                    Text(
                                      '${invoice.clientZipCode} ${invoice.clientZipCode.isEmpty || invoice.clientState.isEmpty ? '' : ','} ${invoice.clientState}',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          gapHeight8,
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton.icon(
                                icon: const Icon(Icons.add),
                                label: Text(context.tr.addItem),
                                onPressed: () async {
                                  var invoiceItems =
                                      await showDialog<List<InvoiceItem>?>(
                                    context: context,
                                    builder: (context) {
                                      return FinanceInvoiceEditAddItem(
                                        invoiceId: invoice.id,
                                        clientId: invoice.clientId,
                                      );
                                    },
                                  );

                                  if (invoiceItems != null) {
                                    bloc.add(
                                      FinanceInvoiceEditEvent.addItems(
                                        items: invoiceItems,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                          const Divider(),
                          Expanded(
                            child: DataTable2(
                              dataRowHeight: null,
                              empty: const Center(
                                child: Text(
                                  '',
                                ),
                              ),
                              columns: [
                                DataColumn2(
                                  size: ColumnSize.L,
                                  label: Text(
                                    '${context.tr.product}/${context.tr.service}',
                                  ),
                                ),
                                DataColumn2(
                                  size: ColumnSize.L,
                                  label: Text(
                                    context.tr.description,
                                  ),
                                ),
                                DataColumn2(
                                  numeric: true,
                                  fixedWidth: Sizes.size136,
                                  label: Text(
                                      '${context.tr.qty}/${context.tr.hrs}'),
                                ),
                                DataColumn2(
                                  size: ColumnSize.S,
                                  numeric: true,
                                  label: Text(context.tr.rate),
                                ),
                                DataColumn2(
                                  numeric: true,
                                  label: Text(context.tr.amount),
                                ),
                                const DataColumn2(
                                  size: ColumnSize.S,
                                  numeric: true,
                                  label: Text(''),
                                ),
                              ],
                              rows: invoice.groupItemsByTask.map((item) {
                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        item.productService,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        item.description,
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        convertHoursToFormattedTime(
                                          item.qtyHrs,
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        item.rate.toStringAsFixed(2),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        item.amount.toStringAsFixed(2),
                                      ),
                                    ),
                                    DataCell(
                                      PopupMenuButton(
                                        tooltip: '',
                                        itemBuilder: (context) => [
                                          PopupMenuItem(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  Sizes.size4,
                                                ),
                                                color: AppColor.orange,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  Sizes.size8,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        context.tr.edit,
                                                        style: const TextStyle(
                                                          color: AppColor
                                                              .lightColor,
                                                        ),
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.edit_outlined,
                                                      color:
                                                          AppColor.lightColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          PopupMenuItem(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  Sizes.size4,
                                                ),
                                                color: AppColor.red,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                  Sizes.size8,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        context.tr.remove,
                                                        style: const TextStyle(
                                                          color: AppColor
                                                              .lightColor,
                                                        ),
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.delete,
                                                      color:
                                                          AppColor.lightColor,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                          const Divider(),
                          gapHeight16,
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      BaseTextFormField(
                                        label: context.tr.customerMessage,
                                        maxLines: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                gapWidth16,
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(context.tr.total),
                                          ),
                                          Expanded(
                                            child: Text(
                                              invoice.total.toStringAsFixed(2),
                                              textAlign: TextAlign.end,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Divider(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
