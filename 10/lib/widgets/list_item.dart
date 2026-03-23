import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;

  const ListItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(title),
        leading: const Icon(Icons.list),
      ),
    );
  }
}