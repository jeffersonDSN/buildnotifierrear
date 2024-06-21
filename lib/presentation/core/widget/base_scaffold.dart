import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? leading;
  final String title;
  final List<Widget>? actions;
  final Widget child;

  const BaseScaffold({
    super.key,
    this.leading,
    required this.title,
    this.actions,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: leading,
        title: Text(title),
        actions: actions,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Divider(),
          gapHeight8,
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
