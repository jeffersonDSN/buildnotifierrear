import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class HourInputWidget extends StatefulWidget {
  final String hintText;
  final bool enabled;
  final DateTime value;
  final ValueChanged<DateTime> onChangeValue;

  const HourInputWidget({
    super.key,
    required this.hintText,
    required this.enabled,
    required this.value,
    required this.onChangeValue,
  });

  @override
  State<StatefulWidget> createState() => _HourInputWidgetState();
}

class _HourInputWidgetState extends State<HourInputWidget> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController textController = TextEditingController();

  final DateFormat dayFormat = DateFormat('hh:mm');

  String ampm = 'AM';

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(changeDate);
  }

  @override
  void dispose() {
    _focusNode.removeListener(changeDate);
    _focusNode.dispose();
    super.dispose();
  }

  String formatTime(String input) {
    final regex = RegExp(r'^(\d{1,2})(:(\d{1,2})?)?$');

    return input.replaceAllMapped(regex, (match) {
      String hour = match.group(1) ?? '00';
      String minute = (match.group(3) != null && match.group(3)!.isNotEmpty)
          ? match.group(3)!
          : '00';

      String formattedHour = hour.padLeft(2, '0');
      String formattedMinute = minute.padLeft(2, '0');

      return '$formattedHour:$formattedMinute';
    });
  }

  DateTime parseTimeString(String timeString) {
    String hourMinute = timeString.substring(0, 5);
    String period = timeString.substring(6);

    List<String> hourMinuteSplit = hourMinute.split(':');
    int hour = int.parse(hourMinuteSplit[0]);
    int minute = int.parse(hourMinuteSplit[1]);

    if (period == "PM" && hour < 12) {
      hour += 12;
    }

    return widget.value.copyWith(hour: hour, minute: minute, second: 00);
  }

  void changeDate() {
    widget.onChangeValue.call(
      parseTimeString('${formatTime(textController.text)} $ampm'),
    );
  }

  String getAmPm(DateTime dateTime) {
    if (dateTime.hour < 12) {
      return 'AM';
    } else {
      return 'PM';
    }
  }

  @override
  Widget build(Object context) {
    textController.text = dayFormat.format(widget.value);

    ampm = getAmPm(widget.value);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: const BorderSide(
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 48,
            child: TextFormField(
              focusNode: _focusNode,
              onEditingComplete: () {
                changeDate();
              },
              enabled: widget.enabled,
              controller: textController,
              style: const TextStyle(
                fontSize: 14,
              ),
              inputFormatters: [TimeTextInputFormatter()],
              decoration: InputDecoration(
                hintText: widget.hintText,
                isDense: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 4,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
            child: VerticalDivider(),
          ),
          SizedBox(
            width: Sizes.size68,
            child: PopupMenuButton(
              enabled: widget.enabled,
              tooltip: '',
              initialValue: ampm,
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    ampm,
                    style: TextStyle(
                      fontSize: 14,
                      color: widget.enabled ? Colors.black : Colors.grey,
                    ),
                  ),
                  gapWidth4,
                  const Icon(
                    Icons.unfold_more,
                    color: AppColor.primaryColorSwatch,
                  )
                ],
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 'AM',
                    child: Text(
                      'AM',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'PM',
                    child: Text(
                      'PM',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ];
              },
              onSelected: (value) {
                ampm = value;

                changeDate();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TimeTextInputFormatter extends TextInputFormatter {
  final _separator = ':';

  final _hoursLimit = RegExp(
    r'^[0-9]{1,2}\:[0-9]{2}$',
  );

  final _validCharacters = RegExp(r'^([0-9\:]+)?$');

  final _hoursOctet = RegExp(r'^[0-9]{2}$');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    if (_hoursLimit.hasMatch(oldValue.text)) {
      return oldValue;
    }

    if (!_validCharacters.hasMatch(newValue.text)) {
      return oldValue;
    }

    if (newValue.text.endsWith(_separator) &&
        (oldValue.text.isEmpty ||
            oldValue.text.endsWith(_separator) ||
            _hoursOctet.hasMatch(oldValue.text) ||
            oldValue.text.contains(_separator))) {
      return oldValue;
    }

    if (!newValue.text.endsWith(_separator) &&
        newValue.text.contains(_separator)) {
      if (int.parse(newValue.text.split(_separator)[0]) > 12 ||
          int.parse(newValue.text.split(_separator)[1]) > 59) {
        return oldValue;
      }
    }

    if (!newValue.text.endsWith(_separator) &&
        !_hoursLimit.hasMatch(newValue.text) &&
        newValue.text.length > 1 &&
        _hoursOctet.hasMatch(
          newValue.text.substring(
            newValue.text.length - 2,
            newValue.text.length - 0,
          ),
        )) {
      if (int.parse(newValue.text) > 12) {
        return oldValue;
      }

      return newValue.copyWith(
        text: '${newValue.text}:',
        selection: TextSelection.fromPosition(
          TextPosition(
            offset: '${newValue.text}:'.length,
          ),
        ),
      );
    }

    return newValue;
  }
}
