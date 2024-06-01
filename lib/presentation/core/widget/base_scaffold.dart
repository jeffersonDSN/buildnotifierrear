import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? leading;
  final String title;
  final Widget child;

  const BaseScaffold({
    super.key,
    this.leading,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Divider(),
          gapHeight16,
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
