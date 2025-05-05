import 'package:flutter/material.dart';
import 'base_spacing.dart';

class HeaderStack extends StatelessWidget {
  final Widget background;
  final Widget foreground;

  const HeaderStack({
    required this.background,
    required this.foreground,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        background,
        foreground,
      ],
    );
  }
}