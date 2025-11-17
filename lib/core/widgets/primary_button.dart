import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
  });

  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Rounded pill shape
      ),
      textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
    );

    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        style: buttonStyle,
        icon: Icon(icon),
        label: Text(text),
      );
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(text),
    );
  }
}
