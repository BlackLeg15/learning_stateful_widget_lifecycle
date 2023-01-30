import 'package:flutter/material.dart';
import 'package:learning_stateful_widget_lifecycle/app/2_did_update_widget/widgets/time_stamp_widget.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  String timeStamp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimeStampWidget(timeStamp: timeStamp),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    timeStamp = DateTime.now().toString();
                  });
                },
                child: const Text('Set updated time stamp'))
          ],
        ),
      ),
    );
  }
}
