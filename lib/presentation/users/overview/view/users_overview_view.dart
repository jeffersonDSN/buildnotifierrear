import 'package:buildnotifierrear/domain/entities/core/dependent_state_type.dart';
import 'package:buildnotifierrear/domain/entities/time_card/time_card.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/app/model/view_type.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/total_active_card.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_day_details_widget.dart';
import 'package:buildnotifierrear/presentation/time_cards/overview/widget/time_cards_overview_widget.dart';
import 'package:buildnotifierrear/presentation/users/overview/bloc/users_overview_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class UsersOverviewView extends IView {
  const UsersOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<UsersOverviewBloc>(context);

    bloc.add(const UsersOverviewEvent.load());

    return BaseScaffold(
      title: 'Users',
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
              userSelected,
              timeCardsOfUserSelected,
              timeCardsState,
            ) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TotalActive(
                    title: 'Users',
                    total: users.length,
                    onPressed: () {
                      appBloc(context).add(
                        const AppEvent.changeView(
                          mod: Mod.users(
                            type: ViewType.create(),
                          ),
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size16),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  var user = users[index];

                                  return ListTile(
                                    selected: userSelected == user,
                                    title: Text(
                                      '${user.firstName} ${user.lastName}',
                                    ),
                                    subtitle: const Text('Bricklayer'),
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
                                          if (userSelected == user)
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
                                        UsersOverviewEvent.changeUserSelected(
                                          userSelected: user,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: timeCardsState.maybeWhen(
                                  orElse: () => const Card(),
                                  loading: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  listing: () {
                                    return DefaultTabController(
                                      initialIndex: 0,
                                      length: 2,
                                      child: Column(
                                        children: [
                                          gapHeight8,
                                          TabBar(
                                            indicator: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Sizes.size24,
                                              ),
                                              color:
                                                  AppColor.primaryColorSwatch,
                                            ),
                                            labelColor: Colors.white,
                                            unselectedLabelColor: Colors.black,
                                            indicatorSize:
                                                TabBarIndicatorSize.tab,
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
                                                TimeCardsOverviewWidget(
                                                  timeCards:
                                                      timeCardsOfUserSelected,
                                                  onOpenDetails: (value) {
                                                    bloc.add(
                                                      UsersOverviewEvent
                                                          .updateTimeCardState(
                                                        timeCardsState:
                                                            DependenteStateType
                                                                .reading(
                                                          value: value,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                TableCalendar(
                                                  firstDay: DateTime.utc(
                                                      2010, 10, 16),
                                                  lastDay:
                                                      DateTime.utc(2030, 3, 14),
                                                  focusedDay: DateTime.now(),
                                                  currentDay: DateTime.now(),
                                                  calendarStyle: CalendarStyle(
                                                    defaultTextStyle:
                                                        const TextStyle(
                                                      color: AppColor
                                                          .primaryColorSwatch,
                                                    ),
                                                    weekendTextStyle:
                                                        const TextStyle(
                                                      color: AppColor.warning,
                                                    ),
                                                    selectedDecoration:
                                                        const BoxDecoration(
                                                      color: AppColor
                                                          .primaryColorSwatch,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    todayDecoration:
                                                        BoxDecoration(
                                                      color: AppColor
                                                          .primaryColorSwatch
                                                          .shade300,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                  // selectedDayPredicate: (day) {
                                                  //   // return isSameDay(
                                                  //   //     selectedDay, day);
                                                  // },
                                                  onDaySelected: (selectedDay,
                                                      focusedDay) {
                                                    // bloc.add(
                                                    //   ScheduleEvent.load(
                                                    //     selectDay: focusedDay,
                                                    //   ),
                                                    // );
                                                  },
                                                  calendarFormat:
                                                      CalendarFormat.week,
                                                  headerStyle:
                                                      const HeaderStyle(
                                                    titleCentered: true,
                                                    formatButtonVisible: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  reading: (value) {
                                    return TaskEditWidget(
                                      timecards:
                                          timeCardsOfUserSelected.getByStart(
                                        value,
                                      ),
                                      onCancel: () {
                                        bloc.add(
                                          const UsersOverviewEvent
                                              .updateTimeCardState(
                                            timeCardsState:
                                                DependenteStateType.listing(),
                                          ),
                                        );
                                      },
                                    );
                                  }),
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
