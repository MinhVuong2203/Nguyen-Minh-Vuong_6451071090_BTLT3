import 'package:flutter/material.dart';
import '../widgets/grid_item.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<bool> selected = List.generate(9, (index) => false);

  void toggleItem(int index) {
    setState(() {
      selected[index] = !selected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid Gesture")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GridItem(
              isSelected: selected[index],
              onTap: () => toggleItem(index),
            );
          },
        ),
      ),
    );
  }
}