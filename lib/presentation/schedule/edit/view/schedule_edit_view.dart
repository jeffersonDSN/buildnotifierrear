import 'package:buildnotifierrear/domain/entities/core/crud_type.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/schedule/edit/bloc/schedule_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ScheduleEditView extends IView {
  final CrudType type;

  final DateFormat hourFormat = DateFormat.jm();
  final DateFormat dayFormat = DateFormat.yMEd();

  ScheduleEditView({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ScheduleEditBloc>(context);

    bloc.add(
      ScheduleEditEvent.load(
        type: type,
      ),
    );

    return BaseScaffold(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: Sizes.size32,
        ),
        onPressed: () {
          appBloc(context).add(
            const AppEvent.changeView(
              mod: Mod.schedule(
                type: ViewType.overview(),
              ),
            ),
          );
        },
      ),
      title: type.when(
        create: () => 'New appointment',
        update: (id) => 'Edit appointment',
      ),
      child: BlocBuilder<ScheduleEditBloc, ScheduleEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loaded: (periodType, appointment) {
              return Column(
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Form(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dates:',
                                      style: TextStyle(
                                        color: AppColor.primaryColorSwatch,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    DropdownButton<SchedulePeriodType>(
                                      value: periodType,
                                      items: const [
                                        DropdownMenuItem(
                                          value: SchedulePeriodType.noRepeat,
                                          child: Text('Does not repeat'),
                                        ),
                                        DropdownMenuItem(
                                          value:
                                              SchedulePeriodType.repeatInPeriod,
                                          child: Text('Repeat in period'),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          bloc.add(
                                            ScheduleEditEvent.changePeriodType(
                                              value: value,
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                    Expanded(
                                      child: ListView.separated(
                                        itemCount:
                                            state.asLoaded.appointments.length,
                                        itemBuilder: (context, index) {
                                          var appointment = state
                                              .asLoaded.appointments[index];
                                          return Row(
                                            children: [
                                              Flexible(
                                                flex: 2,
                                                child: TextFormField(
                                                  initialValue:
                                                      dayFormat.format(
                                                    appointment.startDateTime,
                                                  ),
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Date',
                                                    labelStyle: TextStyle(
                                                      fontSize: Sizes.size12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              gapWidth4,
                                              Flexible(
                                                flex: 1,
                                                child: TextFormField(
                                                  initialValue: hourFormat
                                                      .format(appointment
                                                          .startDateTime),
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Start',
                                                    labelStyle: TextStyle(
                                                      fontSize: Sizes.size12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              gapWidth4,
                                              Flexible(
                                                flex: 1,
                                                child: TextFormField(
                                                  initialValue: hourFormat
                                                      .format(appointment
                                                          .endDateTime),
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'End',
                                                    labelStyle: TextStyle(
                                                      fontSize: Sizes.size12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              gapWidth16,
                                              Tooltip(
                                                message:
                                                    'Add another period to this day',
                                                child: IconButton(
                                                  icon: const Icon(
                                                    Icons.add_circle,
                                                    color: AppColor
                                                        .primaryColorSwatch,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                              gapWidth4,
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.delete,
                                                  color: AppColor.red,
                                                ),
                                                onPressed: () {},
                                              )
                                            ],
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return const Divider();
                                        },
                                      ),
                                    ),
                                    if (periodType.isNoRepeat)
                                      TextButton(
                                        child: const Text('Add a day'),
                                        onPressed: () {},
                                      ),
                                  ],
                                ),
                              ),
                              gapWidth16,
                              const VerticalDivider(),
                              gapWidth16,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Title',
                                      ),
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Project',
                                      ),
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Task',
                                      ),
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'Location',
                                      ),
                                    ),
                                    gapHeight8,
                                    TextFormField(
                                      maxLines: 3,
                                      decoration: const InputDecoration(
                                        labelText: 'Description',
                                      ),
                                    ),
                                    gapHeight16,
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Assign to:',
                                          style: TextStyle(
                                            color: AppColor.primaryColorSwatch,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        FilledButton.icon(
                                          icon: const Icon(
                                            Icons.add,
                                          ),
                                          label: const Text('Add a user'),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: ListView(
                                        children: [
                                          ListTile(
                                            title: const Text('Gutierry'),
                                            subtitle: const Text('Bricklayer'),
                                            trailing: IconButton(
                                              icon: const Icon(
                                                Icons.delete,
                                                color: AppColor.red,
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  gapHeight16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton.icon(
                          icon: const Icon(
                            Icons.check,
                          ),
                          label: type.when(
                            create: () => const Text('Create appointment'),
                            update: (id) => const Text('Update appointment'),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
