import 'package:flutter/material.dart';
import '../widgets/tappable_box.dart';

class TapDemoView extends StatelessWidget {
  const TapDemoView({super.key});

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('You tapped the box!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: TappableBox(
          onTap: () => _showSnackBar(context),
        ),
      ),
    );
  }
}