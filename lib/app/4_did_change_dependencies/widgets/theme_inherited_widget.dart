import 'package:flutter/material.dart';

class ThemeInheritedWidget extends InheritedWidget {
  final CustomTheme customTheme;
  const ThemeInheritedWidget({required this.customTheme, required Widget child, Key? key}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant ThemeInheritedWidget oldWidget) {
    return customTheme.myTheme != oldWidget.customTheme.myTheme;
  }

  static ThemeInheritedWidget? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
}

class CustomTheme {
  ThemeData myTheme;
  CustomTheme({
    required this.myTheme,
  });

  void setNewThemeData(ThemeData themeData) {
    myTheme = themeData;
  }
}
