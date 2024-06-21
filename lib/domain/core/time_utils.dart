import 'package:intl/intl.dart';

double parseTimeToDouble(int hours, int minutes) {
  double decimalMinutes = minutes / 60.0;
  return hours + decimalMinutes;
}

String formatTime(int hours, int minutes) {
  final numberFormat = NumberFormat("00");
  return '${numberFormat.format(hours)}:${numberFormat.format(minutes)}';
}
