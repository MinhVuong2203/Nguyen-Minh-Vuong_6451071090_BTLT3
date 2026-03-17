import 'package:flutter/material.dart';
import '../widgets/pointer_box.dart';

class PointerEventView extends StatelessWidget {
  const PointerEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Pointer Events Demo'),
      ),
      body: const Center(
        child: PointerBox(),
      ),
    );
  }
}