import 'package:flutter/material.dart';

import 'initial_page_states.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  PageState _state = firstState;

  @override
  void initState() {
    debugPrint("--- Initial Page's initState ---");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _state.topWidget,
                const FlutterLogo(size: 60),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _state.bottomWidget
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _state = _state.nextState;
          });
        },
        tooltip: 'Change State',
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}

