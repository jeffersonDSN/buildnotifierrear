import 'package:intl/intl.dart';

final DateFormat hourFormat = DateFormat.jm();

final numberFormat = NumberFormat("00");

double parseTimeToDouble(int hours, int minutes) {
  double decimalMinutes = minutes / 60.0;
  return hours + decimalMinutes;
}

String hourFormatByHoursAndMinutes(int hours, int minutes) {
  return '${numberFormat.format(hours)}:${numberFormat.format(minutes)}';
}

String hourFormatByDateTime(DateTime date) {
  return hourFormat.format(date);
}
