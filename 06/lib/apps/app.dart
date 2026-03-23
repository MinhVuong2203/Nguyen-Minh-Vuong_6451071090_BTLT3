import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/views/DragCircleView.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drag Circle Demo',
      theme: ThemeData.light(),
      home: const DragCircleView(),
    );
  }
}