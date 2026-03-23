import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/views/swipe_image_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe đổi hình',
      theme: ThemeData.light(),
      home: const SwipeImageView(),
    );
  }
}