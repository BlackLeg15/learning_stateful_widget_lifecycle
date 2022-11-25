import 'package:flutter/material.dart';

//We use this Global Key to maintain the state of `CustomStatefulWidget`
final key = GlobalKey<_CustomStatefulWidgetState>();

class CustomStatefulWidget extends StatefulWidget {
  const CustomStatefulWidget({Key? key}) : super(key: key);

  @override
  State<CustomStatefulWidget> createState() => _CustomStatefulWidgetState();
}

class _CustomStatefulWidgetState extends State<CustomStatefulWidget> {
  int counter = 0;

  @override
  void deactivate() {
    debugPrint('--- DEACTIVATE ---');
    super.deactivate();
  }

  @override
  void activate() {
    debugPrint('--- ACTIVATE ---');
    super.activate();
  }

  @override
  void dispose() {
    debugPrint('--- DISPOSE ---');
    super.dispose();
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$counter'),
        ElevatedButton(onPressed: increment, child: const Text('Increment')),
      ],
    );
  }
}
