import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class BaseCustomCardWidget extends StatelessWidget {
  final Row header;
  final Widget body;
  final Row footer;

  const BaseCustomCardWidget({
    super.key,
    this.header = const Row(),
    required this.body,
    this.footer = const Row(),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Sizes.size48,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Sizes.size8),
                topRight: Radius.circular(Sizes.size8),
              ),
            ),
            child: header,
          ),
          Expanded(
            child: body,
          ),
          Container(
            height: Sizes.size48,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Sizes.size8),
                bottomRight: Radius.circular(Sizes.size8),
              ),
            ),
            child: footer,
          ),
        ],
      ),
    );
  }
}
