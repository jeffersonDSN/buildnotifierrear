import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_scaffold.dart';
import 'package:buildnotifierrear/presentation/core/widget/base_text_form_field.dart';
import 'package:buildnotifierrear/presentation/settings/edit/bloc/settings_edit_bloc.dart';
import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class SettingsEditView extends IView {
  const SettingsEditView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SettingsEditBloc>(context);

    bloc.add(
      const SettingsEditEvent.load(),
    );

    return BaseScaffold(
      title: 'Settings',
      child: BlocBuilder<SettingsEditBloc, SettingsEditState>(
        bloc: bloc,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (settings) {
              return Padding(
                padding: const EdgeInsets.all(
                  Sizes.size16,
                ),
                child: SizedBox(
                  width: Sizes.size300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(
                              Sizes.size16,
                            ),
                            child: Column(
                              children: [
                                BaseTextFormField(
                                  label: 'Company Name',
                                  initialValue: settings.name,
                                  onChanged: (value) {
                                    bloc.add(
                                      SettingsEditEvent.changeName(
                                        value: value,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight16,
                                BaseDropdownButtonField<int>(
                                  label: 'Pay period',
                                  value: settings.payPeriod,
                                  items: [
                                    DropdownItem(
                                      value: 0,
                                      title: 'Weeky',
                                    ),
                                    DropdownItem(
                                      value: 1,
                                      title: 'Bi-Weeky',
                                    ),
                                    DropdownItem(
                                      value: 2,
                                      title: 'Monthy',
                                    ),
                                  ],
                                  onChanged: (value) {
                                    bloc.add(
                                      SettingsEditEvent.changePayPeriod(
                                        value: value ?? 0,
                                      ),
                                    );
                                  },
                                ),
                                gapHeight32,
                                const Text('Select when your period start'),
                                gapHeight8,
                                TableCalendar(
                                  firstDay: DateTime.utc(2010, 10, 16),
                                  lastDay: DateTime.utc(2030, 3, 14),
                                  focusedDay: settings.periodStart,
                                  currentDay: DateTime.now(),
                                  calendarStyle: CalendarStyle(
                                    defaultTextStyle: const TextStyle(
                                      color: AppColor.primaryColorSwatch,
                                    ),
                                    weekendTextStyle: const TextStyle(
                                      color: AppColor.warning,
                                    ),
                                    selectedDecoration: const BoxDecoration(
                                      color: AppColor.primaryColorSwatch,
                                      shape: BoxShape.circle,
                                    ),
                                    todayDecoration: BoxDecoration(
                                      color:
                                          AppColor.primaryColorSwatch.shade300,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  selectedDayPredicate: (day) {
                                    return isSameDay(settings.periodStart, day);
                                  },
                                  onDaySelected: (selectedDay, focusedDay) {
                                    bloc.add(
                                      SettingsEditEvent.changeSelectedDay(
                                        value: focusedDay,
                                      ),
                                    );
                                  },
                                  calendarFormat: CalendarFormat.month,
                                  headerStyle: const HeaderStyle(
                                    titleCentered: true,
                                    formatButtonVisible: false,
                                  ),
                                )
                              ],
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
                              label: const Text('Update settings'),
                              onPressed: () {
                                bloc.add(
                                  SettingsEditEvent.save(
                                    callBack: () {
                                      appBloc(context).add(
                                        const AppEvent.changeView(
                                          mod: Mod.home(),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
