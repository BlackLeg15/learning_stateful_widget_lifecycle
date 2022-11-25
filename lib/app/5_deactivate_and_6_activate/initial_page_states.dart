import 'package:flutter/widgets.dart';

import 'widgets/custom_stateful_widget.dart' as custom_stateful;

abstract class PageState {
  Widget get topWidget;
  Widget get bottomWidget;
  PageState get nextState;

  const PageState();
}

const firstState = TopRowWithWidget();
const secondState = BottomRowWithWidget();

class TopRowWithWidget extends PageState {
  const TopRowWithWidget();

  @override
  Widget get bottomWidget => const SizedBox();

  @override
  PageState get nextState => secondState;

  @override
  Widget get topWidget => custom_stateful.CustomStatefulWidget(key: custom_stateful.key);
}

class BottomRowWithWidget extends PageState {
  const BottomRowWithWidget();
  
  @override
  Widget get topWidget => const SizedBox();

  @override
  PageState get nextState => firstState;

  @override
  Widget get bottomWidget => custom_stateful.CustomStatefulWidget(key: custom_stateful.key);
}
