import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/widgets/custom_slider.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double value = 50;

  void onChanged(double newValue) {
    setState(() {
      value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Slider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value.toInt().toString(),
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(height: 40),
          CustomSlider(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}