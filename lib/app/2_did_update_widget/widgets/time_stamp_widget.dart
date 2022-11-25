import 'package:flutter/material.dart';

class TimeStampWidget extends StatefulWidget {
  final String timeStamp;
  const TimeStampWidget({Key? key, required this.timeStamp}) : super(key: key);

  @override
  State<TimeStampWidget> createState() => _TimeStampWidgetState();
}

class _TimeStampWidgetState extends State<TimeStampWidget> {
    @override
  void didUpdateWidget(covariant TimeStampWidget oldWidget) {
    debugPrint("--- TimeStampWidget's didUpdateWidget ---\ntimeStamp: ${widget.timeStamp}");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.timeStamp);
  }
}
