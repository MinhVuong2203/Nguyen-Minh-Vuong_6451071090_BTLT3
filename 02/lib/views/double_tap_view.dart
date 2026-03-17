import 'package:flutter/material.dart';
import '../widgets/color_box.dart';

class DoubleTapView extends StatelessWidget {
  const DoubleTapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo'),
      ),
      body: const Center(
        child: ColorBox(),
      ),
    );
  }
}