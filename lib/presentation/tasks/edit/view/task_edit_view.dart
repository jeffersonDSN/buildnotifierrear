import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/view/task_edit_form_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEditView extends IView {
  final CrudType type;

  const TaskEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<TaskEditBloc>(context);

    bloc.add(
      TaskEditEvent.load(
        crudType: type,
      ),
    );

    return BaseScaffold(
      title: type.when(
        create: () => context.tr.newTask,
        update: (id) => context.tr.editTask,
      ),
      child: BaseCustomCardWidget(
        body: const TaskEditFormView(),
        footer: Row(
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
            Padding(
              padding: const EdgeInsets.all(Sizes.size8),
              child: FilledButton.icon(
                icon: const Icon(
                  Icons.check,
                ),
                label: Text(context.tr.save),
                onPressed: () {
                  bloc.add(
                    TaskEditEvent.save(
                      onSave: () {
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
        ),
      ),
    );
  }
}
