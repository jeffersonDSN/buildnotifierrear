import 'dart:typed_data';

import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class InvoicePdf {
  //final double tax;
  //final String paymentInfo;
  final Invoice invoice;
  final PdfColor baseColor;
  final PdfColor accentColor;
  final BuildContext buildContext;
  final PdfPageFormat pageFormat = const PdfPageFormat(
    612,
    792,
    marginAll: 72,
  );

  InvoicePdf({
    required this.invoice,
    required this.buildContext,
    Color? baseColor,
    Color? accentColor,
  })  : baseColor = baseColor != null
            ? PdfColor.fromInt(baseColor.value)
            : PdfColor.fromInt(AppColor.primaryColorSwatch.value),
        accentColor = accentColor != null
            ? PdfColor.fromInt(accentColor.value)
            : PdfColors.blueGrey900;

  static const _darkColor = PdfColors.blueGrey800;
  static const _lightColor = PdfColors.white;

  PdfColor get _baseTextColor => baseColor.isLight ? _lightColor : _darkColor;

  PdfColor get _accentTextColor => baseColor.isLight ? _lightColor : _darkColor;

  pw.MemoryImage? _logo;

  pw.MemoryImage? _bgShape;

  Future<Uint8List> buildPdf() async {
    final doc = pw.Document();

    _logo = pw.MemoryImage(
      (await rootBundle.load('assets/images/buildnotifier.png'))
          .buffer
          .asUint8List(),
    );

    _bgShape = pw.MemoryImage(
      (await rootBundle.load('assets/images/invoice.png')).buffer.asUint8List(),
    );

    doc.addPage(
      pw.MultiPage(
        pageTheme: _buildTheme(
          pageFormat,
          await PdfGoogleFonts.robotoRegular(),
          await PdfGoogleFonts.robotoBold(),
          await PdfGoogleFonts.robotoItalic(),
        ),
        header: _buildHeader,
        footer: _buildFooter,
        build: (context) => [
          _contentTable(context),
          pw.SizedBox(height: Sizes.size20),
          _contentFooter(context),
          pw.SizedBox(height: Sizes.size20),
          //_termsAndConditions(context),
        ],
      ),
    );

    // Return the PDF file content
    return doc.save();
  }

  pw.Widget _buildHeader(pw.Context context) {
    return pw.Column(
      children: [
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              child: pw.Column(
                mainAxisSize: pw.MainAxisSize.min,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                    alignment: pw.Alignment.topRight,
                    padding: const pw.EdgeInsets.only(
                      bottom: Sizes.size8,
                    ),
                    height: Sizes.size72,
                    child: _logo != null ? pw.Image(_logo!) : pw.PdfLogo(),
                  ),
                  // pw.Container(
                  //   color: baseColor,
                  //   padding: const pw.EdgeInsets.all(Sizes.size8),
                  // ),
                  pw.Container(
                    height: Sizes.size72,
                    child: pw.RichText(
                      text: pw.TextSpan(
                        text: 'BUILDNOTIFIER \n',
                        style: pw.TextStyle(
                          color: _darkColor,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        ),
                        children: [
                          const pw.TextSpan(
                            text: '\n',
                            style: pw.TextStyle(
                              fontSize: 4,
                            ),
                          ),
                          pw.TextSpan(
                            text: '119 Hemingway ave, Unit J \n',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                          pw.TextSpan(
                            text: invoice.clientCity,
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                          pw.TextSpan(
                            text: ' East Haven, CT 06512',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  pw.SizedBox(
                    height: Sizes.size4,
                  ),
                  pw.Container(
                    height: Sizes.size72,
                    child: pw.RichText(
                      text: pw.TextSpan(
                        text: '${buildContext.tr.invoiceTo} \n',
                        style: pw.TextStyle(
                          color: _darkColor,
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 14,
                        ),
                        children: [
                          pw.TextSpan(
                            text:
                                '${invoice.clientFirstName} ${invoice.clientlastName}\n',
                            style: pw.TextStyle(
                              color: _darkColor,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const pw.TextSpan(
                            text: '\n',
                            style: pw.TextStyle(
                              fontSize: 4,
                            ),
                          ),
                          pw.TextSpan(
                            text:
                                '${invoice.clientAddress} ${invoice.clientAddress.isNotEmpty && invoice.clientAddress2.isNotEmpty ? ',' : ''} ${invoice.clientAddress2} \n',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                          pw.TextSpan(
                            text: invoice.clientCity,
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                          pw.TextSpan(
                            text:
                                ' ${invoice.clientZipCode} ${invoice.clientZipCode.isNotEmpty && invoice.clientState.isNotEmpty ? ',' : ''} ${invoice.clientState}',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.normal,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.SizedBox(
              width: Sizes.size16,
            ),
            pw.Expanded(
              child: pw.Column(
                children: [
                  pw.Container(
                    height: Sizes.size48,
                    padding: const pw.EdgeInsets.only(
                      left: Sizes.size20,
                    ),
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text(
                      buildContext.tr.invoice.toUpperCase(),
                      style: pw.TextStyle(
                        color: baseColor,
                        fontWeight: pw.FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  pw.Container(
                    decoration: pw.BoxDecoration(
                      borderRadius:
                          const pw.BorderRadius.all(pw.Radius.circular(2)),
                      color: accentColor,
                    ),
                    padding: const pw.EdgeInsets.only(
                      left: Sizes.size40,
                      top: Sizes.size12,
                      bottom: Sizes.size12,
                      right: Sizes.size20,
                    ),
                    alignment: pw.Alignment.centerLeft,
                    height: Sizes.size56,
                    child: pw.DefaultTextStyle(
                      style: pw.TextStyle(
                        color: _accentTextColor,
                        fontSize: 10,
                      ),
                      child: pw.GridView(
                        crossAxisCount: 2,
                        children: [
                          pw.Text('${buildContext.tr.invoice} #'),
                          pw.Text(invoice.id),
                          pw.Text(buildContext.tr.issueDate),
                          pw.Text(_formatDate(DateTime.now())),
                          pw.Text(buildContext.tr.dueDate),
                          pw.Text(_formatDate(invoice.dueDate!)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (context.pageNumber > 1)
          pw.SizedBox(
            height: Sizes.size20,
          )
      ],
    );
  }

  pw.Widget _buildFooter(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        pw.Container(
          height: Sizes.size20,
          width: Sizes.size112,
          child: pw.BarcodeWidget(
            barcode: pw.Barcode.pdf417(),
            data: '${buildContext.tr.invoice}# ${invoice.id}',
            drawText: false,
          ),
        ),
        pw.Text(
          '${buildContext.tr.page} ${context.pageNumber}/${context.pagesCount}',
          style: const pw.TextStyle(
            fontSize: 10,
            color: PdfColors.white,
          ),
        ),
      ],
    );
  }

  pw.PageTheme _buildTheme(
      PdfPageFormat pageFormat, pw.Font base, pw.Font bold, pw.Font italic) {
    return pw.PageTheme(
      pageFormat: pageFormat,
      theme: pw.ThemeData.withFont(
        base: base,
        bold: bold,
        italic: italic,
      ),
      buildBackground: (context) => pw.FullPage(
        ignoreMargins: true,
        child: pw.Image(_bgShape!),
      ),
    );
  }

  pw.Widget _contentFooter(pw.Context context) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Expanded(
          flex: 2,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              if (invoice.customerMessage.isNotEmpty)
                pw.Text(
                  buildContext.tr.customerMessage,
                  style: pw.TextStyle(
                    color: _darkColor,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              if (invoice.customerMessage.isNotEmpty)
                pw.Text(
                  invoice.customerMessage,
                  style: const pw.TextStyle(
                    fontSize: 8,
                    lineSpacing: Sizes.size4,
                    color: _darkColor,
                  ),
                ),
              pw.Container(
                margin: const pw.EdgeInsets.only(
                  top: Sizes.size20,
                  bottom: Sizes.size8,
                ),
                child: pw.Text(
                  '', //'Payment Info:',
                  style: pw.TextStyle(
                    color: baseColor,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.Text(
                '', //paymentInfo,
                style: const pw.TextStyle(
                  fontSize: 8,
                  lineSpacing: Sizes.size4,
                  color: _darkColor,
                ),
              ),
            ],
          ),
        ),
        pw.Expanded(
          flex: 1,
          child: pw.DefaultTextStyle(
            style: const pw.TextStyle(
              fontSize: 10,
              color: _darkColor,
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(buildContext.tr.subTotal),
                    pw.Text(_formatCurrency(invoice.total)),
                  ],
                ),
                pw.SizedBox(
                  height: Sizes.size4,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    //pw.Text('Tax:'),
                    //pw.Text('${(tax * 100).toStringAsFixed(1)}%'),
                  ],
                ),
                pw.Divider(color: accentColor),
                pw.DefaultTextStyle(
                  style: pw.TextStyle(
                    color: baseColor,
                    fontSize: 14,
                    fontWeight: pw.FontWeight.bold,
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(buildContext.tr.total),
                      pw.Text(_formatCurrency(invoice.total)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  pw.Widget _termsAndConditions(pw.Context context) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        pw.Expanded(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border(top: pw.BorderSide(color: accentColor)),
                ),
                padding: const pw.EdgeInsets.only(
                  top: Sizes.size12,
                  bottom: Sizes.size4,
                ),
                child: pw.Text(
                  'Terms & Conditions',
                  style: pw.TextStyle(
                    fontSize: 10,
                    color: baseColor,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.Text(
                pw.LoremText().paragraph(40),
                textAlign: pw.TextAlign.justify,
                style: const pw.TextStyle(
                  fontSize: 8,
                  lineSpacing: Sizes.size2,
                  color: _darkColor,
                ),
              ),
            ],
          ),
        ),
        pw.Expanded(
          child: pw.SizedBox(),
        ),
      ],
    );
  }

  pw.Widget _contentTable(pw.Context context) {
    var tableHeaders = [
      '${buildContext.tr.product}/${buildContext.tr.service}',
      buildContext.tr.description,
      '${buildContext.tr.qty}/${buildContext.tr.hrs}',
      buildContext.tr.rate,
      buildContext.tr.amount
    ];

    var items = invoice.groupItemsByTask;

    return pw.TableHelper.fromTextArray(
      border: null,
      cellAlignment: pw.Alignment.centerLeft,
      headerDecoration: pw.BoxDecoration(
        borderRadius: const pw.BorderRadius.all(
          pw.Radius.circular(
            Sizes.size2,
          ),
        ),
        color: baseColor,
      ),
      headerHeight: Sizes.size24,
      cellHeight: Sizes.size40,
      cellAlignments: {
        0: pw.Alignment.centerLeft,
        1: pw.Alignment.centerLeft,
        2: pw.Alignment.centerRight,
        3: pw.Alignment.center,
        4: pw.Alignment.centerRight,
      },
      headerStyle: pw.TextStyle(
        color: _baseTextColor,
        fontSize: 10,
        fontWeight: pw.FontWeight.bold,
      ),
      cellStyle: const pw.TextStyle(
        color: _darkColor,
        fontSize: 10,
      ),
      rowDecoration: pw.BoxDecoration(
        border: pw.Border(
          bottom: pw.BorderSide(
            color: accentColor,
            width: .5,
          ),
        ),
      ),
      headers: List<String>.generate(
        tableHeaders.length,
        (col) => tableHeaders[col],
      ),
      columnWidths: const {
        0: pw.FlexColumnWidth(25),
        1: pw.FlexColumnWidth(25),
        2: pw.FlexColumnWidth(25),
        3: pw.FlexColumnWidth(25),
        4: pw.FixedColumnWidth(75),
      },
      data: List<List<String>>.generate(
        items.length,
        (row) => List<String>.generate(
          tableHeaders.length,
          (col) {
            var item = items[row];
            switch (col) {
              case 0:
                return item.productService;
              case 1:
                return item.description;
              case 2:
                return convertHoursToFormattedTime(
                  item.qtyHrs,
                );
              case 3:
                return _formatCurrency(item.rate);
              case 4:
                return _formatCurrency(item.amount);
            }
            return '';
          },
        ),
      ),
    );
  }
}

String _formatCurrency(double amount) {
  return '\$${amount.toStringAsFixed(2)}';
}

String _formatDate(DateTime date) {
  final format = DateFormat.yMMMd('en_US');
  return format.format(date);
}
