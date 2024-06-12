import 'package:buildnotifierrear/firebase_options.dart';
import 'package:buildnotifierrear/presentation/app/bloc/app_bloc.dart';
import 'package:buildnotifierrear/presentation/app/model/mod.dart';
import 'package:buildnotifierrear/presentation/lading/page/lading_page.dart';
import 'package:buildnotifierrear/presentation/sign_in/sign_in.dart';
import 'package:buildnotifierrear/presentation/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:html' as html;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  html.document.onContextMenu.listen((html.MouseEvent event) {
    event.preventDefault();
  });

  html.document.onKeyDown.listen((html.KeyboardEvent event) {
    if (event.keyCode == 123 || // F12
        (event.ctrlKey &&
            event.shiftKey &&
            event.keyCode == 73) || // Ctrl+Shift+I
        (event.ctrlKey &&
            event.shiftKey &&
            event.keyCode == 74) || // Ctrl+Shift+J
        (event.ctrlKey && event.keyCode == 85)) {
      // Ctrl+U
      event.preventDefault();
      event.stopPropagation();
    }
  });

  runApp(
    BlocProvider(
      create: (context) => AppBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Build Notifier',
      theme: AppTheme.mainTheme,
      home: BlocBuilder<AppBloc, AppState>(
        bloc: BlocProvider.of<AppBloc>(context),
        builder: (context, state) {
          return state.when(
            empty: () => const SignIn(),
            logged: (user, mod) => LandingPage(
              bloc: BlocProvider.of<AppBloc>(context),
              child: mod.view(),
            ),
          );
        },
      ),
    );
  }
}
