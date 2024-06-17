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

  const BaseTextFormField({
    super.key,
    required this.label,
    this.hintText,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            initialValue: initialValue,
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
