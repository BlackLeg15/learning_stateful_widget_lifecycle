import 'package:flutter/material.dart';
import 'widgets/custom_text.dart';
import 'widgets/theme_inherited_widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final lightTheme = ThemeData.light();
  final darkTheme = ThemeData.dark();
  ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      customTheme: CustomTheme(myTheme: theme ?? lightTheme),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: const CustomText(text: 'Hello World'),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: const Icon(Icons.change_circle),
            onPressed: () {
              final inherited = ThemeInheritedWidget.of(context)?.customTheme;
              setState(
                () => theme = inherited?.myTheme.backgroundColor == lightTheme.backgroundColor ? darkTheme : lightTheme,
              );
            },
          ),
        ),
      ),
    );
  }
}
