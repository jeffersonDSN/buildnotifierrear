import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/extensions/build_context_extentions.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_custom_card_widget.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/projects/edit/bloc/project_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/projects/edit/view/project_edit_form_view.dart';
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
    var bloc = BlocProvider.of<ProjectEditBloc>(context);

    bloc.add(ProjectEditEvent.load(type: type));

    return BaseScaffold(
      title: type.when(
        create: () => context.tr.newProject,
        update: (id) => context.tr.editProject,
      ),
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: BaseCustomCardWidget(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Sizes.size48,
                width: Sizes.size300,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Text(
                        context.tr.project,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        context.tr.tasks,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              ProjectEditFormView(),
            ],
          ),
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
                      const AppEvent.changeView(
                        mod: Mod.projects(
                          type: ViewType.overview(),
                        ),
                      ),
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
                      ProjectEditEvent.save(
                        callback: () {
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
      ),
    );
  }
}
