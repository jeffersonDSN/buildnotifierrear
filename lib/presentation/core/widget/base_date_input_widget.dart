import 'package:buildnotifierrear/presentation/theme/app_color.dart';
import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class BaseDateInputWidget extends StatefulWidget {
  final String label;
  final String? hintText;
  final DateTime? value;
  final bool enabled;
  final VoidCallback? onPressedChangeDate;
  final ValueChanged<DateTime> onChangeDate;
  final FormFieldValidator<String>? validator;

  const BaseDateInputWidget({
    super.key,
    this.label = '',
    this.hintText,
    this.value,
    this.enabled = true,
    required this.onPressedChangeDate,
    required this.onChangeDate,
    this.validator,
  });

  @override
  State<StatefulWidget> createState() => _BaseDateInputWidgetState();
}

class _BaseDateInputWidgetState extends State<BaseDateInputWidget> {
  final FocusNode _focusNode = FocusNode();
  final DateFormat eFormat = DateFormat.E();
  final DateFormat dateFormat = DateFormat.yMd();

  TextEditingController dateController = TextEditingController();

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

  void changeDate() {
    final dateTime = dateFormat.parse(dateController.text);

    widget.onChangeDate.call(
      dateTime.copyWith(
        hour: widget.value?.hour,
        minute: widget.value?.minute,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    dateController.text =
        widget.value != null ? dateFormat.format(widget.value!) : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: Sizes.size4),
            child: Text(
              widget.label,
              style: Theme.of(context).inputDecorationTheme.labelStyle,
            ),
          ),
        SizedBox(
          width: Sizes.size164,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Sizes.size4,
              ),
              side: const BorderSide(
                width: 0.5,
              ),
            ),
            child: TextFormField(
              focusNode: _focusNode,
              inputFormatters: [DateTextInputFormatter()],
              enabled: widget.enabled,
              controller: dateController,
              style: const TextStyle(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                prefix: Text(
                  '${widget.value != null ? eFormat.format(widget.value!) : ''} ',
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.calendar_month,
                    color: AppColor.primaryColorSwatch,
                  ),
                  onPressed: widget.onPressedChangeDate,
                ),
              ),
              onEditingComplete: () {
                changeDate();
              },
              validator: widget.validator,
            ),
          ),
        ),
      ],
    );
  }
}

class DateTextInputFormatter extends TextInputFormatter {
  final _separator = '/';

  final _dateLimit = RegExp(
    r'^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}$',
  );

  final _validCharacters = RegExp(r'^([0-9\/]+)?$');

  final _hoursOctet = RegExp(r'^[0-9]{2}$');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    if (_dateLimit.hasMatch(oldValue.text)) {
      return oldValue;
    }

    if (!_validCharacters.hasMatch(newValue.text)) {
      return oldValue;
    }

    if (newValue.text.endsWith(_separator) &&
        (oldValue.text.isEmpty ||
            oldValue.text.endsWith(_separator) ||
            _hoursOctet.hasMatch(oldValue.text))) {
      return oldValue;
    }

    if (!newValue.text.endsWith(_separator) &&
        newValue.text.contains(_separator)) {
      if (int.parse(newValue.text.split(_separator)[0]) > 12 ||
          int.parse(newValue.text.split(_separator)[1]) > 31) {
        return oldValue;
      }
    }

    if (!newValue.text.endsWith(_separator) &&
        !_dateLimit.hasMatch(newValue.text) &&
        newValue.text.split(_separator).length < 3 &&
        newValue.text.length > 1 &&
        _hoursOctet.hasMatch(
          newValue.text.substring(
            newValue.text.length - 2,
            newValue.text.length - 0,
          ),
        )) {
      if (!newValue.text.contains(_separator) &&
          int.parse(newValue.text) > 12) {
        return oldValue;
      }

      return newValue.copyWith(
        text: '${newValue.text}/',
        selection: TextSelection.fromPosition(
          TextPosition(
            offset: '${newValue.text}/'.length,
          ),
        ),
      );
    }

    return newValue;
  }
}
