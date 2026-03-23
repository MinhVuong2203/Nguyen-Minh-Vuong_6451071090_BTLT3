import 'package:flutter/material.dart';
import '../widgets/list_item.dart';

class DismissibleListView extends StatefulWidget {
  const DismissibleListView({super.key});

  @override
  State<DismissibleListView> createState() => _DismissibleListViewState();
}

class _DismissibleListViewState extends State<DismissibleListView> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
  ];

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe to Delete")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item),

            // Chỉ cho kéo sang trái
            direction: DismissDirection.endToStart,

            onDismissed: (direction) {
              removeItem(index);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("$item đã bị xoá")),
              );
            },

            // Background khi kéo
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),

            child: ListItem(title: item),
          );
        },
      ),
    );
  }
}