import 'package:buildnotifierrear/presentation/core/localization/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension OnBuildContextT<T extends Widget> on BuildContext {
  T? get() {
    return findAncestorWidgetOfExactType<T>();
  }
}

extension OnBuildContext on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;

  String get languageCode => Localizations.localeOf(this).languageCode;
}
