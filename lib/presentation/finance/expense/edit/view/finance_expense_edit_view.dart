import 'dart:html';
import 'dart:typed_data';

import 'package:buildnotifierrear/domain/core/utils.dart';
import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/domain/entities/enums/file_extension_enums.dart';
import 'package:buildnotifierrear/domain/entities/enums/payment_method_enums.dart';
import 'package:buildnotifierrear/domain/entities/expense/expense.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_date_input_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/add_project/finance_expense_edit_add_project.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/item_edit/finance_expense_item_edit.dart';
import 'package:buildnotifierrear/presentation/finance/expense/edit/bloc/finance_expense_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;

class FinanceExpenseEditView extends IView {
  final CrudType crudType;

  const FinanceExpenseEditView({
    super.key,
    required this.crudType,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<FinanceExpenseEditBloc>(context);

    bloc.add(
      FinanceExpenseEditEvent.load(
        crudType: crudType,
      ),
    );

    return Container(
      color: AppColor.lightColor,
      child: BlocBuilder<FinanceExpenseEditBloc, FinanceExpenseEditState>(
        bloc: bloc,
        builder: (context, state) {
          return Column(
            children: [
              const Divider(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.size16),
                  child: state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loaded: (crudType, expense, categories, cards) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: BaseDropdownButtonField(
                                  value: (
                                    id: expense.categoryId,
                                    title: expense.categoryTitle,
                                  ),
                                  label: context.tr.categories,
                                  items: [
                                    DropdownItem(
                                      value: (id: '', title: ''),
                                      title: '',
                                    ),
                                    ...categories.map((category) {
                                      return DropdownItem(
                                        value: (
                                          id: category.id,
                                          title: category.title
                                        ),
                                        title: category.title,
                                      );
                                    })
                                  ],
                                  onChanged: (value) {
                                    if (value != null) {
                                      bloc.add(
                                        FinanceExpenseEditEvent.changeCategory(
                                          id: value.id,
                                          title: value.title,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              if (expense.categoryId == '2') gapWidth8,
                              if (expense.categoryId == '2')
                                Expanded(
                                  child: BaseDropdownButtonField(
                                    label: context.tr.creditCard,
                                    value: (
                                      id: expense.creditCardId,
                                      number: expense.creditCardNumber,
                                    ),
                                    items: [
                                      DropdownItem(
                                        value: (
                                          id: '',
                                          number: '',
                                        ),
                                        title: '',
                                      ),
                                      ...cards.map(
                                        (card) {
                                          return DropdownItem(
                                            value: (
                                              id: card.id,
                                              number: card.number,
                                            ),
                                            title:
                                                '**** **** **** ${card.number}',
                                          );
                                        },
                                      ),
                                    ],
                                    onChanged: (value) {
                                      if (value != null) {
                                        bloc.add(
                                          FinanceExpenseEditEvent
                                              .changeCreditCard(
                                            id: value.id,
                                            number: value.number,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              gapWidth8,
                              Expanded(
                                child: BaseDropdownButtonField(
                                  label: context.tr.paymentMethod,
                                  value: expense.paymentMethod,
                                  items: PaymentMethodEnums.values.where(
                                    (paymentMethod) {
                                      return expense.categoryId != '2' ||
                                          (expense.categoryId == '2' &&
                                              [
                                                PaymentMethodEnums.cash,
                                                PaymentMethodEnums.debitCard,
                                                PaymentMethodEnums.bankAccount,
                                              ].contains(paymentMethod));
                                    },
                                  ).map(
                                    (paymentMethod) {
                                      return DropdownItem(
                                        value: paymentMethod,
                                        title: paymentMethod.name(context),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (value) {
                                    if (value != null) {
                                      bloc.add(
                                        FinanceExpenseEditEvent
                                            .changePaymentMethod(
                                          paymentMethod: value,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              if (expense.paymentMethod.isCreditCard) gapWidth8,
                              if (expense.paymentMethod.isCreditCard)
                                Expanded(
                                  child: BaseDropdownButtonField(
                                    label: context.tr.creditCard,
                                    value: (
                                      id: expense.paymentMethodCardId,
                                      number: expense.paymentMethodCardNumber,
                                    ),
                                    items: [
                                      DropdownItem(
                                        value: (
                                          id: '',
                                          number: '',
                                        ),
                                        title: '',
                                      ),
                                      ...cards.map(
                                        (card) {
                                          return DropdownItem(
                                            value: (
                                              id: card.id,
                                              number: card.number,
                                            ),
                                            title:
                                                '**** **** **** ${card.number}',
                                          );
                                        },
                                      ),
                                    ],
                                    onChanged: (value) {
                                      if (value != null) {
                                        bloc.add(
                                          FinanceExpenseEditEvent
                                              .changePaymentMethodCreditCard(
                                            id: value.id,
                                            number: value.number,
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                            ],
                          ),
                          if (expense.categoryId != '2')
                            Padding(
                              padding: const EdgeInsets.only(
                                top: Sizes.size16,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (expense.projectId.isEmpty)
                                    TextButton.icon(
                                      icon: const Icon(Icons.link),
                                      label: Text(
                                        context.tr.linkExpenseToProject,
                                      ),
                                      onPressed: () async {
                                        var projectInfo = await showDialog<
                                            ({
                                              String projectId,
                                              String projectName,
                                              String taskId,
                                              String taskTitle,
                                            })?>(
                                          context: context,
                                          builder: (context) {
                                            return const FinanceExpenseEditAddProject();
                                          },
                                        );

                                        if (projectInfo != null) {
                                          bloc.add(
                                            FinanceExpenseEditEvent.linkProject(
                                              projectId: projectInfo.projectId,
                                              projectName:
                                                  projectInfo.projectName,
                                              taskId: projectInfo.taskId,
                                              taskTitle: projectInfo.taskTitle,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  if (expense.projectId.isNotEmpty)
                                    TextButton.icon(
                                      icon: const Icon(Icons.link),
                                      label: Text(
                                        context.tr.unlinkExpenseFromProject,
                                      ),
                                      onPressed: () async {
                                        bloc.add(
                                          const FinanceExpenseEditEvent
                                              .linkProject(
                                            projectId: '',
                                            projectName: '',
                                            taskId: '',
                                            taskTitle: '',
                                          ),
                                        );
                                      },
                                    ),
                                ],
                              ),
                            ),
                          if (expense.projectId.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(
                                top: Sizes.size8,
                                bottom: Sizes.size8,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: BaseTextFormField(
                                      enabled: false,
                                      key: Key(expense.projectName),
                                      label: context.tr.project,
                                      initialValue: expense.projectName,
                                    ),
                                  ),
                                  if (expense.taskId.isNotEmpty) gapWidth8,
                                  if (expense.taskId.isNotEmpty)
                                    Expanded(
                                      child: BaseTextFormField(
                                        enabled: false,
                                        key: Key(expense.taskTitle),
                                        label: context.tr.task,
                                        initialValue: expense.taskTitle,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          Row(
                            children: [
                              BaseDateInputWidget(
                                label: context.tr.dueDate,
                                value: expense.dueDate,
                                onPressedChangeDate: () async {
                                  var date = await getDate(context);

                                  if (date != null) {
                                    bloc.add(
                                      FinanceExpenseEditEvent.changeDueDate(
                                        dueDate: date,
                                      ),
                                    );
                                  }
                                },
                                onChangeDate: (value) {
                                  bloc.add(
                                    FinanceExpenseEditEvent.changeDueDate(
                                      dueDate: value,
                                    ),
                                  );
                                },
                              ),
                              gapWidth8,
                              Expanded(
                                child: SizedBox(
                                  width: Sizes.size300,
                                  child: BaseTextFormField(
                                    initialValue: expense.description,
                                    label: context.tr.description,
                                    onChanged: (value) {
                                      bloc.add(
                                        FinanceExpenseEditEvent
                                            .changeDescription(
                                          description: value,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          gapHeight16,
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton.icon(
                                icon: const Icon(Icons.add),
                                label: Text(context.tr.addItem),
                                onPressed: () async {
                                  var expenseItem =
                                      await showDialog<ExpenseItem?>(
                                    context: context,
                                    builder: (context) {
                                      return const FinanceExpenseItemEdit();
                                    },
                                  );

                                  if (expenseItem != null) {
                                    bloc.add(
                                      FinanceExpenseEditEvent.addExpenseItem(
                                        item: expenseItem,
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
                                DataColumn2(
                                  size: ColumnSize.S,
                                  numeric: true,
                                  label: Text(context.tr.action),
                                ),
                              ],
                              rows: expense.items.map((item) {
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
                          TextButton.icon(
                            icon: const Icon(Icons.attach_file),
                            label: Text(context.tr.addAttachment),
                            onPressed: () async {
                              FileUploadInputElement uploadInput =
                                  FileUploadInputElement();
                              uploadInput.accept =
                                  'pdf, jpg, jpeg, png, gif, txt, pptx';
                              uploadInput.multiple = false;
                              uploadInput.click();

                              uploadInput.onChange.listen((e) {
                                final files = uploadInput.files;
                                if (files != null && files.isNotEmpty) {
                                  final file = files[0];
                                  FileReader reader = FileReader();

                                  Uint8List? uploadedImage;

                                  reader.onLoadEnd.listen((e) {
                                    uploadedImage = reader.result as Uint8List?;

                                    bloc.add(
                                      FinanceExpenseEditEvent.addAttachment(
                                        attachment: Attachment(
                                          name: file.name,
                                          fileExtension: path
                                              .extension(file.name)
                                              .toLowerCase()
                                              .fileExtension,
                                          data: uploadedImage!,
                                        ),
                                      ),
                                    );
                                  });

                                  reader.readAsArrayBuffer(file);
                                }
                              });
                            },
                          ),
                          gapHeight8,
                          Expanded(
                            child: SizedBox(
                              width: Sizes.size300,
                              child: ListView.separated(
                                itemCount: expense.attachments.length,
                                itemBuilder: (context, index) {
                                  var fileItem = expense.attachments[index];

                                  return ListTile(
                                    title: Text(fileItem.name),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Sizes.size8),
                    child: FilledButton.icon(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColor.warning,
                        ),
                      ),
                      icon: const Icon(Icons.close),
                      label: Text(context.tr.close),
                      onPressed: () {
                        appBloc(context).add(
                          const AppEvent.goBack(),
                        );
                      },
                    ),
                  ),
                  if (bloc.state.isLoaded)
                    Padding(
                      padding: const EdgeInsets.all(Sizes.size8),
                      child: FilledButton.icon(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColor.success,
                          ),
                        ),
                        icon: const Icon(
                          Icons.check,
                        ),
                        label: Text(context.tr.save),
                        onPressed: () {
                          bloc.add(
                            FinanceExpenseEditEvent.save(
                              () {
                                appBloc(context).add(
                                  const AppEvent.goBack(),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
