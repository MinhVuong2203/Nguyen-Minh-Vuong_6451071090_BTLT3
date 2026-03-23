import 'package:flutter/material.dart';

class DraggableCircle extends StatelessWidget {
  final Function(Offset delta) onDrag;

  const DraggableCircle({
    super.key,
    required this.onDrag,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        onDrag(details.delta);
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}