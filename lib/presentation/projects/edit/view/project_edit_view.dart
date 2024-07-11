import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/attachment/overview/attachment.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/project_edit_form_view.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/gantt_chart_app.dart';
import 'package:buildnotifierrear/presentation/tasks/overview/tasks_overview.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditView extends IView {
  final CrudType type;

  const ProjectEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var bloc = BlocProvider.of<ProjectEditBloc>(context);

    bloc.add(ProjectEditEvent.load(type: type));

    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Column(
        children: [
          Container(
            color: AppColor.lightColor,
            height: Sizes.size64,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size700,
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
                                  const Icon(Icons.business),
                                  gapWidth4,
                                  Text(context.tr.project),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.task),
                                  gapWidth4,
                                  Text(context.tr.tasks),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.rotate(
                                    angle: -3.14 / 2,
                                    child: const Icon(
                                      Icons.waterfall_chart,
                                    ),
                                  ),
                                  gapWidth4,
                                  Text(context.tr.ganttChart),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.attach_file),
                                  gapWidth4,
                                  Text(context.tr.attachment),
                                ],
                              ),
                            ]),
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
            child: BlocBuilder<ProjectEditBloc, ProjectEditState>(
                bloc: bloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (type, project, clients, states, isSaving) {
                      return TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ProjectEditFormView(
                            formKey: formKey,
                            isSaving: isSaving,
                          ),
                          ...type.when(
                            create: () => [
                              Container(),
                              Container(),
                              Container(),
                            ],
                            update: (id) {
                              return [
                                TasksOverview(
                                  projectId: project.id,
                                ),
                                GanttChartApp(
                                  projectId: project.id,
                                  startDate: project.startDate!,
                                  endDate: project.expectedCompletionDate!,
                                ),
                                Attachment(
                                  folderId: project.id,
                                ),
                              ];
                            },
                          ),
                        ],
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
