import 'package:flutter/material.dart';
import 'base_spacing.dart';

class IconRow extends StatelessWidget {
  final String text;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final VoidCallback onPressed;

  const IconRow({
    required this.text,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BaseSpacing.rowPadding,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(leadingIcon, size: BaseSpacing.iconSize),
                const SizedBox(width: 12),
                Text(
                  text,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Icon(trailingIcon, size: BaseSpacing.iconSize),
          ],
        ),
      ),
    );
  }
}