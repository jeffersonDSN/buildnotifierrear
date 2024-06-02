import 'package:buildnotifierrear/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class TotalActive extends StatelessWidget {
  final String title;
  final int total;
  final VoidCallback? onPressed;

  const TotalActive({
    super.key,
    required this.title,
    required this.total,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: Sizes.size240,
        height: Sizes.size124,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Total active $title',
                style: const TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight8,
              Text(
                '$total',
                style: const TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapHeight8,
              Center(
                child: FilledButton(
                  onPressed: onPressed,
                  child: Text('Create new $title'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
