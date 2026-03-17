import 'package:flutter/material.dart';

class PointerBox extends StatefulWidget {
  const PointerBox({super.key});

  @override
  State<PointerBox> createState() => _PointerBoxState();
}

class _PointerBoxState extends State<PointerBox> {
  double _x = 0;
  double _y = 0;

  void _updatePosition(PointerEvent event) {
    setState(() {
      _x = event.localPosition.dx;
      _y = event.localPosition.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _updatePosition,
      onPointerMove: _updatePosition,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text(
          'x: ${_x.toStringAsFixed(1)}, y: ${_y.toStringAsFixed(1)}',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}