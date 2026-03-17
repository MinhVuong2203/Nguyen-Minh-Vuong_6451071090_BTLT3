import 'package:flutter/material.dart';

class TappableBox extends StatelessWidget {
  final VoidCallback onTap;

  const TappableBox({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Tap me',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}