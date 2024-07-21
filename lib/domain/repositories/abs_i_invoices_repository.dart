import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIInvoicesRepository
    implements AbsICRUDRepository<Invoice> {
  Future<String> generateInvoiceNumber();

  Future<bool> changeStatus(String invoiceId, InvoiceStatusEnums status);
}
