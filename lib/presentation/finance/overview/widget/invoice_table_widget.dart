import 'dart:html' as html;

import 'package:buildnotifierrear/domain/core/format_utils.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/presentation/finance/core/invoice_pdf.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class InvoiceTableWidget extends StatelessWidget {
  final List<Invoice> invoices;
  final ValueChanged<Invoice> onPaid;
  final ValueChanged<Invoice> onCancel;

  const InvoiceTableWidget({
    super.key,
    required this.invoices,
    required this.onPaid,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.lightColor,
      child: Padding(
        padding: const EdgeInsets.all(
          Sizes.size16,
        ),
        child: DataTable2(
          empty: const Center(
            child: Text(
              '',
            ),
          ),
          columns: [
            DataColumn2(
              size: ColumnSize.M,
              label: Text(
                context.tr.dueDate,
              ),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: Text('${context.tr.invoice}#'),
            ),
            DataColumn2(
              fixedWidth: Sizes.size200,
              size: ColumnSize.L,
              label: Text(context.tr.client),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: Text(context.tr.amount),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: Text(context.tr.balance),
            ),
            DataColumn2(
              fixedWidth: Sizes.size152,
              numeric: true,
              label: Text(context.tr.status),
            ),
            DataColumn2(
              size: ColumnSize.S,
              numeric: true,
              label: Text(context.tr.action),
            ),
          ],
          rows: invoices.map((invoice) {
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    formatDate(
                      invoice.dueDate!,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    invoice.id,
                  ),
                ),
                DataCell(
                  Text(
                    '${invoice.clientFirstName} ${invoice.clientlastName}',
                  ),
                ),
                DataCell(
                  Text(
                    invoice.total.toStringAsFixed(2),
                  ),
                ),
                DataCell(
                  Text(
                    0.toStringAsFixed(2),
                  ),
                ),
                DataCell(
                  Container(
                    decoration: BoxDecoration(
                      color: invoice.status.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size12,
                      vertical: Sizes.size2,
                    ),
                    child: Text(
                      invoice.status.name(context),
                      style: const TextStyle(
                        color: AppColor.lightColor,
                      ),
                    ),
                  ),
                ),
                if (![
                  InvoiceStatusEnums.draft,
                  InvoiceStatusEnums.overdue,
                  InvoiceStatusEnums.sent,
                  InvoiceStatusEnums.partiallyPaid,
                  InvoiceStatusEnums.paid,
                ].contains(invoice.status))
                  DataCell(
                    Container(),
                  ),
                if ([
                  InvoiceStatusEnums.draft,
                  InvoiceStatusEnums.overdue,
                  InvoiceStatusEnums.sent,
                  InvoiceStatusEnums.partiallyPaid,
                  InvoiceStatusEnums.paid,
                ].contains(invoice.status))
                  DataCell(
                    PopupMenuButton(
                      tooltip: '',
                      itemBuilder: (context) => [
                        if ([
                          InvoiceStatusEnums.draft,
                          InvoiceStatusEnums.overdue,
                          InvoiceStatusEnums.sent,
                          InvoiceStatusEnums.partiallyPaid,
                        ].contains(invoice.status))
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
                            var pdfData = await InvoicePdf(
                              invoice: invoice,
                              buildContext: context,
                            ).buildPdf();

                            final blob = html.Blob(
                              [pdfData],
                              'application/pdf',
                            );

                            final url = html.Url.createObjectUrlFromBlob(
                              blob,
                            );

                            html.AnchorElement(href: url)
                              ..setAttribute(
                                "download",
                                "invoice.pdf",
                              )
                              ..click();

                            html.Url.revokeObjectUrl(url);
                          },
                        ),
                        if ([
                          InvoiceStatusEnums.draft,
                          InvoiceStatusEnums.overdue,
                          InvoiceStatusEnums.sent,
                          InvoiceStatusEnums.partiallyPaid,
                        ].contains(invoice.status))
                          PopupMenuItem(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                                color: AppColor.success,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Sizes.size8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        context.tr.markAsPaid,
                                        style: const TextStyle(
                                          color: AppColor.lightColor,
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.done,
                                      color: AppColor.lightColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () async {
                              onPaid.call(invoice);
                            },
                          ),
                        if ([
                          InvoiceStatusEnums.draft,
                          InvoiceStatusEnums.overdue,
                          InvoiceStatusEnums.sent,
                        ].contains(invoice.status))
                          PopupMenuItem(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  Sizes.size4,
                                ),
                                color: AppColor.warning,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  Sizes.size8,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        context.tr.cancelInvoice,
                                        style: const TextStyle(
                                          color: AppColor.lightColor,
                                        ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.cancel,
                                      color: AppColor.lightColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () async {
                              onCancel.call(invoice);
                            },
                          ),
                      ],
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
