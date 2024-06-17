import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class DropdownItem<T> {
  final T? value;
  final String title;
  DropdownItem({
    required this.value,
    required this.title,
  });
}

class BaseDropdownButtonField<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<DropdownItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final bool isExpanded;

  const BaseDropdownButtonField({
    super.key,
    required this.label,
    this.value,
    required this.items,
    this.onChanged,
    this.isExpanded = false,
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
        DropdownButtonFormField<T>(
          isExpanded: isExpanded,
          value: value,
          items: items.map<DropdownMenuItem<T>>(
            (item) {
              return DropdownMenuItem(
                value: item.value,
                child: Text(item.title),
              );
            },
          ).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
