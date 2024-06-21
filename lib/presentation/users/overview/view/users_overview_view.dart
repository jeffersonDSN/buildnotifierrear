import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/period/period.dart';
import 'package:buildnotifierrear/domain/entities/timecard/timecard.dart';
import 'package:buildnotifierrear/domain/entities/user/user.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/schedule/overview/widget/schedule_widget.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_day_details_widget.dart';
import 'package:buildnotifierrear/presentation/timecards/overview/widget/timecards_overview_widget.dart';
import 'package:buildnotifierrear/presentation/users/overview/bloc/users_overview_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class UsersOverviewView extends IView {
  const UsersOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat.yMd();
    var bloc = BlocProvider.of<UsersOverviewBloc>(context);

    bloc.add(const UsersOverviewEvent.load());

    return BaseScaffold(
      title: 'Users',
      actions: [
        FilledButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add'),
          onPressed: () {
            appBloc(context).add(
              const AppEvent.changeView(
                mod: Mod.users(
                  type: ViewType.create(),
                ),
              ),
            );
          },
        )
      ],
      child: BlocBuilder<UsersOverviewBloc, UsersOverviewState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            empty: () => Container(),
            loading: () => const Card(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (
              users,
              selectedUser,
              periods,
              selectedPeriod,
              timecardsOfselectedUser,
              timecardsState,
              selectedDay,
              appoitmentOfSelecedDayAndUser,
              appoitmentCardsState,
            ) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  var user = users[index];

                                  return ListTile(
                                    selected: selectedUser == user,
                                    title: Text(
                                      '${user.firstName} ${user.lastName}',
                                    ),
                                    subtitle: Column(
                                      children: [
                                        gapHeight4,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.email_outlined,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            gapWidth4,
                                            Text(
                                              user.email.isNotEmpty
                                                  ? user.email
                                                  : 'N/A',
                                            )
                                          ],
                                        ),
                                        gapHeight4,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.phone,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            gapWidth4,
                                            Text(
                                              user.phoneNumber.isNotEmpty
                                                  ? user.phoneNumber
                                                  : 'N/A',
                                            )
                                          ],
                                        ),
                                        gapHeight4,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.engineering,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            gapWidth4,
                                            Text(
                                              user.department.isNotEmpty
                                                  ? user.department
                                                  : 'N/A',
                                            ),
                                            gapWidth4,
                                            const Text('/'),
                                            gapWidth4,
                                            Text(
                                              user.position.isNotEmpty
                                                  ? user.position
                                                  : 'N/A',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    trailing: SizedBox(
                                      width: Sizes.size72,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              color: AppColor.warning,
                                            ),
                                            onPressed: () {
                                              appBloc(context).add(
                                                AppEvent.changeView(
                                                  mod: Mod.users(
                                                    type: ViewType.update(
                                                      id: user.id,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          if (selectedUser == user)
                                            const Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      bloc.add(
                                        UsersOverviewEvent.changeselectedUser(
                                          selectedUser: user,
                                        ),
                                      );
                                    },
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                              ),
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: DefaultTabController(
                                initialIndex: 0,
                                length: 2,
                                child: Column(
                                  children: [
                                    gapHeight8,
                                    TabBar(
                                      indicator: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          Sizes.size24,
                                        ),
                                        color: AppColor.primaryColorSwatch,
                                      ),
                                      labelColor: Colors.white,
                                      unselectedLabelColor: Colors.black,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      dividerColor: Colors.transparent,
                                      tabs: const [
                                        Tab(text: 'Timecard'),
                                        Tab(text: 'Schedule'),
                                      ],
                                    ),
                                    const Divider(),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          timecardsState.maybeWhen(
                                            orElse: () {
                                              return Column(
                                                children: [
                                                  BaseDropdownButtonField<
                                                      Period>(
                                                    label: 'Select period',
                                                    value: selectedPeriod,
                                                    items:
                                                        periods.map((period) {
                                                      return DropdownItem(
                                                        value: period,
                                                        title:
                                                            '${period.name}: ${dateFormat.format(period.startDate)} - ${dateFormat.format(period.endDate)} ',
                                                      );
                                                    }).toList(),
                                                    onChanged: (value) {
                                                      if (value != null) {
                                                        bloc.add(
                                                          UsersOverviewEvent
                                                              .changeSelectedPeriod(
                                                            selectedPeriod:
                                                                value,
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                  Expanded(
                                                    child:
                                                        TimecardsOverviewWidget(
                                                      selectedPeriod:
                                                          selectedPeriod,
                                                      timecards:
                                                          timecardsOfselectedUser,
                                                      isLoading: timecardsState
                                                          .isLoading,
                                                      onOpenDetails: (value) {
                                                        bloc.add(
                                                          UsersOverviewEvent
                                                              .updateTimecardState(
                                                            timecardsState:
                                                                DependenteStateType
                                                                    .reading(
                                                              value: value,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      getGrossPay:
                                                          (hours, minutes) =>
                                                              selectedUser!
                                                                  .getGrossPay(
                                                        hours,
                                                        minutes,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                            reading: (value) {
                                              return TaskEditWidget(
                                                timecards:
                                                    timecardsOfselectedUser
                                                        .getByStart(
                                                  value,
                                                ),
                                                onCancel: () {
                                                  bloc.add(
                                                    const UsersOverviewEvent
                                                        .updateTimecardState(
                                                      timecardsState:
                                                          DependenteStateType
                                                              .listing(),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          ScheduleWidget(
                                            selectedDay: selectedDay,
                                            isLoading:
                                                appoitmentCardsState.isLoading,
                                            appointments:
                                                appoitmentOfSelecedDayAndUser,
                                            scheduleType: ScheduleType.user,
                                            onChangeSelectedDay: (value) {
                                              bloc.add(
                                                UsersOverviewEvent
                                                    .updateSelectedDay(
                                                  selectedDay: value,
                                                ),
                                              );
                                            },
                                            onCreate: () {},
                                            onDelete: (value) {
                                              bloc.add(
                                                UsersOverviewEvent
                                                    .deleteAppointment(
                                                  appointmentId: value,
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
