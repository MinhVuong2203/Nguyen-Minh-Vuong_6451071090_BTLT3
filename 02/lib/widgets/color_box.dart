import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  Color _color = Colors.blue;

  void _toggleColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: _toggleColor,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Double Tap đi bạn',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}