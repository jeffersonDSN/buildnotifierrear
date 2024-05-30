import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProjectsOverviewView extends StatelessWidget {
  const ProjectsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Projects'),
            Divider(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 240,
                    height: 125,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Total active projects',
                            style: TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight8,
                          const Text(
                            '4',
                            style: TextStyle(
                              fontSize: Sizes.size20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight8,
                          Center(
                            child: FilledButton(
                              child: const Text('Create new project'),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                gapWidth8,
                Card(
                  child: SizedBox(
                    width: 240,
                    height: 125,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Project status',
                            style: TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight16,
                          SizedBox(
                            height: 50,
                            child: PieChart(
                              PieChartData(
                                centerSpaceRadius: 25,
                                sections: [
                                  PieChartSectionData(
                                    value: 10,
                                    radius: 15,
                                    color: AppColor.red,
                                    showTitle: false,
                                  ),
                                  PieChartSectionData(
                                    value: 25,
                                    radius: 15,
                                    showTitle: false,
                                    color: AppColor.warning,
                                  ),
                                  PieChartSectionData(
                                    value: 50,
                                    radius: 15,
                                    showTitle: false,
                                    color: AppColor.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                gapWidth8,
                Card(
                  child: SizedBox(
                    width: 240,
                    height: 125,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Task status',
                            style: TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight16,
                          SizedBox(
                            height: 50,
                            child: PieChart(
                              PieChartData(
                                centerSpaceRadius: 25,
                                sections: [
                                  PieChartSectionData(
                                    value: 10,
                                    radius: 15,
                                    color: AppColor.red,
                                    showTitle: false,
                                  ),
                                  PieChartSectionData(
                                    value: 25,
                                    radius: 15,
                                    showTitle: false,
                                    color: AppColor.warning,
                                  ),
                                  PieChartSectionData(
                                    value: 50,
                                    radius: 15,
                                    showTitle: false,
                                    color: AppColor.green,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                gapWidth8,
                Card(
                  child: SizedBox(
                    width: 200,
                    height: 125,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight8,
                          Row(
                            children: [
                              Container(
                                color: AppColor.green,
                                width: 10,
                                height: 10,
                              ),
                              gapWidth8,
                              const Text('On Track')
                            ],
                          ),
                          gapHeight8,
                          Row(
                            children: [
                              Container(
                                color: AppColor.warning,
                                width: 10,
                                height: 10,
                              ),
                              gapWidth8,
                              const Text('At Risk of Delay')
                            ],
                          ),
                          gapHeight8,
                          Row(
                            children: [
                              Container(
                                color: AppColor.red,
                                width: 10,
                                height: 10,
                              ),
                              gapWidth8,
                              const Text('Delayed')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                        child: ListView(
                          children: [
                            ListTile(
                              selected: true,
                              title: const Text('Project A'),
                              trailing: const Icon(
                                Icons.edit,
                                color: AppColor.warning,
                              ),
                              subtitle: const LinearProgressIndicator(
                                value: 0.5,
                                color: AppColor.green,
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text('Project B'),
                              trailing: const Icon(
                                Icons.edit,
                                color: AppColor.warning,
                              ),
                              subtitle: const LinearProgressIndicator(
                                value: 0.8,
                                color: AppColor.green,
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text('Project C'),
                              trailing: const Icon(
                                Icons.edit,
                                color: AppColor.warning,
                              ),
                              subtitle: const LinearProgressIndicator(
                                value: 0.5,
                                color: AppColor.warning,
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text('Project D'),
                              trailing: const Icon(
                                Icons.edit,
                                color: AppColor.warning,
                              ),
                              subtitle: const LinearProgressIndicator(
                                value: 0.5,
                                color: AppColor.red,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
                        child: Container(
                          color: AppColor.backgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(16, 32, 0, 0),
                                child: Text(
                                  'Tasks',
                                  style: TextStyle(
                                    fontSize: Sizes.size16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(),
                              Expanded(
                                child: ListView(
                                  children: const [
                                    ListTile(
                                      title: Text('Task A'),
                                      trailing: Icon(
                                        Icons.edit,
                                        color: AppColor.warning,
                                      ),
                                      subtitle: LinearProgressIndicator(
                                        value: 0.5,
                                        color: AppColor.green,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text('Task B'),
                                      trailing: Icon(
                                        Icons.edit,
                                        color: AppColor.warning,
                                      ),
                                      subtitle: LinearProgressIndicator(
                                        value: 0.8,
                                        color: AppColor.green,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text('Task C'),
                                      trailing: Icon(
                                        Icons.edit,
                                        color: AppColor.warning,
                                      ),
                                      subtitle: LinearProgressIndicator(
                                        value: 0.5,
                                        color: AppColor.warning,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text('Task D'),
                                      trailing: Icon(
                                        Icons.edit,
                                        color: AppColor.warning,
                                      ),
                                      subtitle: LinearProgressIndicator(
                                        value: 0.5,
                                        color: AppColor.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FilledButton(
                                  child: const Text('Create new task'),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
