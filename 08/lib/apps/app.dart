import 'package:flutter/material.dart';
import 'package:nguyen_minh_vuong_6451071090_btlt3/views/grid_view_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture trong Grid Layout',
      theme: ThemeData.light(),
      home: const GridViewScreen(),
    );
  }
}