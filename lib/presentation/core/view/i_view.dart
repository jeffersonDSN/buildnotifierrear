import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class IView extends StatelessWidget {
  const IView({super.key});

  AppBloc appBloc(BuildContext context) => BlocProvider.of<AppBloc>(context);
}
