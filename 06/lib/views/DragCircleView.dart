import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/widgets/draggable_circle.dart';

class DragCircleView extends StatefulWidget {
  const DragCircleView({super.key});

  @override
  State<DragCircleView> createState() => _DragCircleViewState();
}

class _DragCircleViewState extends State<DragCircleView> {
  double x = 100;
  double y = 100;

  void updatePosition(Offset delta) {
    setState(() {
      x += delta.dx;
      y += delta.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kéo hình tròn"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: x,
            top: y,
            child: DraggableCircle(
              onDrag: updatePosition,
            ),
          ),
        ],
      ),
    );
  }
}
