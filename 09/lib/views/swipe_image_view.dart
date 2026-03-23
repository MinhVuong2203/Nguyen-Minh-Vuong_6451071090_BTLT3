import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/widgets/image_slider.dart';

class SwipeImageView extends StatelessWidget {
  const SwipeImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Image")),
      body: const ImageSlider(),
    );
  }
}