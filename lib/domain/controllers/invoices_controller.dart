import 'package:buildnotifierrear/domain/controllers/crud_controller.dart';
import 'package:buildnotifierrear/domain/entities/enums/invoice_status_enums.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/repositories/abs_i_invoices_repository.dart';

class InvoicesController extends CRUDController<Invoice> {
  final AbsIInvoicesRepository _repository;

  InvoicesController({required AbsIInvoicesRepository repository})
      : _repository = repository,
        super(repository: repository);

  Future<String> generateInvoiceNumber() {
    return _repository.generateInvoiceNumber();
  }

  Future<bool> changeStatus(String invoiceId, InvoiceStatusEnums status) {
    return _repository.changeStatus(invoiceId, status);
  }
}
