import 'package:flutter/material.dart';
import '../widgets/press_card.dart';

class LongPressView extends StatelessWidget {
  const LongPressView({super.key});

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Long press detected'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: PressCard(
          onLongPress: () => _showSnackBar(context),
        ),
      ),
    );
  }
}