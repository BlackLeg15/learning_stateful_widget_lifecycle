import 'package:flutter/material.dart';

class StateOptionButton extends StatelessWidget {
  final String label;
  final Widget page;
  const StateOptionButton({Key? key, required this.page, required this.label}) : super(key: key);

  void _push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _push(context, page);
      },
      child: Text(label),
    );
  }
}
