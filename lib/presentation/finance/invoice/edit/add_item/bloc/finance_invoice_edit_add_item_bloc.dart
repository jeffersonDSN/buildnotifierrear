import 'package:buildnotifierrear/domain/controllers/activities_controller.dart';
import 'package:buildnotifierrear/domain/controllers/projects_controller.dart';
import 'package:buildnotifierrear/domain/controllers/tasks_controller.dart';
import 'package:buildnotifierrear/domain/core/time_utils.dart';
import 'package:buildnotifierrear/domain/entities/activity/activity.dart';
import 'package:buildnotifierrear/domain/entities/invoice/invoice.dart';
import 'package:buildnotifierrear/domain/entities/project/project.dart';
import 'package:buildnotifierrear/domain/entities/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'finance_invoice_edit_add_item_bloc.freezed.dart';
part 'finance_invoice_edit_add_item_event.dart';
part 'finance_invoice_edit_add_item_state.dart';

class FinanceInvoiceEditAddItemBloc extends Bloc<FinanceInvoiceEditAddItemEvent,
    FinanceInvoiceEditAddItemState> {
  FinanceInvoiceEditAddItemBloc({
    required ProjectsController projectController,
    required TasksController tasksController,
    required ActivitiesController activitiesController,
  }) : super(const FinanceInvoiceEditAddItemState.init()) {
    on<FinanceInvoiceEditAddItemEvent>(
      (event, emit) async {
        await event.when(
          loadProjects: (clientId, invoiceId) async {
            emit(
              FinanceInvoiceEditAddItemState.loading(
                cliendId: clientId,
                invoiceId: invoiceId,
              ),
            );

            var projects = await projectController.getAllByClient(clientId);

            emit(
              FinanceInvoiceEditAddItemState.loaded(
                cliendId: clientId,
                invoiceId: invoiceId,
                projects: projects,
              ),
            );
          },
          changeSelectedProject: (projectId) async {
            var lastState = state.asLoaded;

            Project? selectedProject;
            List<Task> tasks = [];
            List<Activity> activiteis = [];

            if (projectId.isNotEmpty) {
              selectedProject = lastState.projects
                  .where(
                    (project) => project.id == projectId,
                  )
                  .first;

              var result = await Future.wait(
                [
                  tasksController.getAllByProject(projectId),
                  activitiesController.getAllUnbilledActivities(projectId),
                ],
              );

              tasks = result[0] as List<Task>;
              activiteis = result[1] as List<Activity>;
            }

            emit(
              FinanceInvoiceEditAddItemState.loaded(
                cliendId: lastState.cliendId,
                invoiceId: lastState.invoiceId,
                projects: lastState.projects,
                selectedProject: selectedProject,
                tasks: tasks,
                activiteis: activiteis,
                filteredActivities: activiteis,
              ),
            );
          },
          changeSelectedTask: (taskId) async {
            var lastState = state.asLoaded;

            Task? selectedTask;
            List<Activity> filteredActivities = lastState.activiteis;

            if (taskId.isNotEmpty) {
              selectedTask = lastState.tasks
                  .where(
                    (task) => task.id == taskId,
                  )
                  .first;

              filteredActivities = lastState.activiteis
                  .where(
                    (activitei) => activitei.taskId == taskId,
                  )
                  .toList();
            }

            emit(
              lastState.copyWith(
                selectedTask: selectedTask,
                filteredActivities: filteredActivities,
              ),
            );
          },
          checkActivity: (activity) {
            var lastState = state.asLoaded;

            List<InvoiceItem> invoiceItems = [];
            if (lastState.invoiceItems.any(
              (item) => item.activityId == activity.id,
            )) {
              invoiceItems = lastState.invoiceItems
                  .where((item) => item.activityId != activity.id)
                  .toList();
            } else {
              var qtyHrs = activity.hoursDifference;
              var task = lastState.selectedTask ??
                  lastState.tasks
                      .where((task) => task.id == activity.taskId)
                      .first;

              var estimatedEffort = task.estimatedEffort;
              var result = estimatedEffort.split(':');
              var hours = int.parse(result[0]);
              var minutes = int.tryParse(result[1]) ?? 0;
              var rate = task.budget / parseTimeToDouble(hours, minutes);

              invoiceItems.addAll(
                [
                  ...lastState.invoiceItems,
                  InvoiceItem(
                    activityId: activity.id,
                    projectId: activity.projectId,
                    taskId: activity.taskId,
                    productService: lastState.selectedProject!.name,
                    description: task.title,
                    qtyHrs: activity.hoursDifference,
                    rate: rate,
                    amount: rate * qtyHrs,
                  ),
                ],
              );
            }

            emit(
              lastState.copyWith(
                invoiceItems: invoiceItems,
              ),
            );
          },
        );
      },
    );
  }
}
