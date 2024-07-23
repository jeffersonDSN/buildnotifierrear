import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseTextFormField extends StatelessWidget {
  final String label;
  final String? hintText;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final int? maxLines;
  final bool? enabled;

  const BaseTextFormField({
    super.key,
    required this.label,
    this.hintText,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
    this.controller,
    this.maxLines = 1,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).inputDecorationTheme.labelStyle,
        ),
        gapHeight4,
        SizedBox(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
            enabled: enabled,
            maxLines: maxLines,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            initialValue: controller == null ? initialValue : null,
            controller: controller,
            onChanged: onChanged,
            validator: validator,
            obscureText: obscureText,
            inputFormatters: inputFormatters,
          ),
        ),
      ],
    );
  }
}
