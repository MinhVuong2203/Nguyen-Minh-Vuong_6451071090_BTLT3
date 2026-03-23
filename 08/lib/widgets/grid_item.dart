import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const GridItem({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey.shade800,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}