import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/attachment/overview/attachment.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/bloc/task_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/tasks/edit/view/task_edit_form_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskEditView extends StatelessWidget {
  final CrudType type;

  const TaskEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    var bloc = BlocProvider.of<TaskEditBloc>(context);

    bloc.add(
      TaskEditEvent.load(
        crudType: type,
      ),
    );

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Container(
            color: AppColor.lightColor,
            height: Sizes.size64,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size300,
                  child: Padding(
                    padding: const EdgeInsets.all(
                      Sizes.size8,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Sizes.size4,
                        ),
                        color: AppColor.greyColorSwatch.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Sizes.size4,
                            ),
                            color: Colors.white,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          tabs: [
                            Row(
                              children: [
                                const Icon(Icons.task),
                                gapWidth4,
                                Text(context.tr.tasks),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.attach_file),
                                gapWidth4,
                                Text(context.tr.attachment),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 2,
          ),
          Expanded(
            child: BlocBuilder<TaskEditBloc, TaskEditState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (type, task, projects, isSaving) {
                    return TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TaskEditFormView(
                          formKey: formKey,
                          isSaving: isSaving,
                        ),
                        ...type.when(
                          create: () => [
                            Container(),
                          ],
                          update: (id) => [
                            Attachment(
                              folderId: task.id,
                            )
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
