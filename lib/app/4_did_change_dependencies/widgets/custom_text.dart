import 'dart:developer';

import 'package:flutter/material.dart';

import 'theme_inherited_widget.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = ThemeInheritedWidget.of(context)?.customTheme.myTheme.textTheme.headline6;
    final color = ThemeInheritedWidget.of(context)?.customTheme.myTheme.backgroundColor;
    log("--- Custom Text's BUILD  ---");
    return Text(
      text,
      style: style?.copyWith(backgroundColor: color),
    );
  }
}
