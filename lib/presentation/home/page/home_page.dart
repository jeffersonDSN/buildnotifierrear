import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: ListView(
          children: [
            const Text(
              'Good afternoon, Jefferson',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapHeight16,
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.watch_later_outlined,
                  color: AppColor.primaryColorSwatch,
                ),
                title: const Text(
                  'Clock',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text('Tap to perform your next Clock action'),
                onTap: () async {
                  // return showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return ClockAlertDialog();
                  //   },
                  // );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.pending_actions_outlined,
                  color: AppColor.primaryColorSwatch,
                ),
                title: const Text(
                  'TimeCard',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text('Monitor your work hours effortlessly'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => TimeCardView()),
                  // );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.calendar_month_outlined,
                  color: AppColor.primaryColorSwatch,
                ),
                title: const Text(
                  'Schedule',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text('View your assigned appointments'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const ScheduleView(),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
