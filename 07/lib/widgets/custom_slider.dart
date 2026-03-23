import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double value;
  final Function(double) onChanged;

  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double position = 0;

  final double maxWidth = 300;
  final double knobSize = 30;

  @override
  void initState() {
    super.initState();
    position = (widget.value / 100) * maxWidth;
  }

  void updatePosition(double dx) {
    setState(() {
      position += dx;

      // Giới hạn trong thanh
      if (position < 0) position = 0;
      if (position > maxWidth) position = maxWidth;

      // Convert sang value 0 - 100
      double newValue = (position / maxWidth) * 100;
      widget.onChanged(newValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      height: 50,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // Thanh nền
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          // Thanh progress
          Container(
            width: position,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          // Nút tròn
          Positioned(
            left: position - knobSize / 2,
            child: GestureDetector(
              onPanUpdate: (details) {
                updatePosition(details.delta.dx);
              },
              child: Container(
                width: knobSize,
                height: knobSize,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}