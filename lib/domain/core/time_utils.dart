import 'package:intl/intl.dart';

final DateFormat hourFormat = DateFormat.jm();

final numberFormat = NumberFormat("00");

double parseTimeToDouble(int hours, int minutes) {
  return hours + (minutes / 60);
}

String hourFormatByHoursAndMinutes(int hours, int minutes) {
  return '${numberFormat.format(hours)}:${numberFormat.format(minutes)}';
}

String hourFormatByDateTime(DateTime date) {
  return hourFormat.format(date);
}

String convertHoursToFormattedTime(double qtyHrs) {
  int hours = qtyHrs.floor();
  int minutes = ((qtyHrs - hours) * 60).round();

  String formattedHours = hours.toString().padLeft(2, '0');
  String formattedMinutes = minutes.toString().padLeft(2, '0');

  return '$formattedHours:$formattedMinutes';
}
