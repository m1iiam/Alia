import 'package:flutter/material.dart';
import 'base_spacing.dart';

class SectionColumn extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SectionColumn({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        BaseSpacing.elementSpacing,
        ...children,
      ],
    );
  }
}