import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/core/view/i_view.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeView extends IView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var hour = DateTime.now().hour;
    String greeting = 'Good evening';

    if (hour >= 5 && hour < 12) {
      greeting = 'Good morning';
    } else if (hour >= 12 && hour < 18) {
      greeting = 'Good afternoon';
    }

    greeting += ', ${appBloc(context).state.asLogged.user.firstName}';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: ListView(
          children: [
            Text(
              greeting,
              style: const TextStyle(
                fontSize: Sizes.size24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
