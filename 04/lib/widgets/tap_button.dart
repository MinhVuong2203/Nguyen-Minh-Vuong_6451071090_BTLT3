import 'package:flutter/material.dart';

class TapButton extends StatelessWidget {
  final VoidCallback onTap;

  const TapButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onTap,
        child: const Text('Tap Here'),
      ),
    );
  }
}