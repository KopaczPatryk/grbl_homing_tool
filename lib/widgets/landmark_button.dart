import 'package:flutter/material.dart';

class LandmarkButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const LandmarkButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.home),
      label: Text(label),
    );
  }
}
