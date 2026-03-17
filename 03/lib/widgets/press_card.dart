import 'package:flutter/material.dart';

class PressCard extends StatelessWidget {
  final VoidCallback onLongPress;

  const PressCard({super.key, required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Press and hold me',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}