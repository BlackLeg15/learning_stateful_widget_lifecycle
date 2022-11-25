import 'package:flutter/material.dart';
import 'app/1_init_state/initial_page.dart' as init_state;
import 'app/2_did_update_widget/initial_page.dart' as did_update_widget;
import 'app/3_build/initial_page.dart' as build_phase;
import 'app/4_did_change_dependencies/initial_page.dart' as did_change_dependencies;
import 'app/5_deactivate_and_6_activate/initial_page.dart' as de_and_activate;
import 'app/widgets/state_option_button.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: "Stateful Widget's Lifecycle Demo"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            StateOptionButton(page: init_state.InitialPage(), label: '1. initState'),
            SizedBox(height: 10),
            StateOptionButton(page: did_update_widget.InitialPage(), label: '2. didUpdateWidget'),
            SizedBox(height: 10),
            StateOptionButton(page: build_phase.InitialPage(), label: '3. build'),
            SizedBox(height: 10),
            StateOptionButton(page: did_change_dependencies.InitialPage(), label: '4. didChangeDependencies'),
            SizedBox(height: 10),
            StateOptionButton(page: de_and_activate.InitialPage(), label: '5-6. deactivate activate'),
            SizedBox(height: 10),
            StateOptionButton(page: de_and_activate.InitialPage(), label: '7. dispose'),
          ],
        ),
      ),
    );
  }
}
