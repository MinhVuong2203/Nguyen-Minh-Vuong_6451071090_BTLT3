import 'package:flutter/material.dart';
import '../widgets/tap_button.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tap count: $_count',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          TapButton(onTap: _increment),
        ],
      ),
    );
  }
}