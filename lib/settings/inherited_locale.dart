import 'package:flutter/cupertino.dart';

import 'local_conttroller.dart';

class InheritedLocalNotifier extends InheritedNotifier<AppLanguage> {
  const InheritedLocalNotifier({
    required AppLanguage localCattroler,
    required super.child,
    super.key,
  }) : super(
    notifier: localCattroler
  );

  static AppLanguage? mybeOf(BuildContext context ,{bool list = true}) {
    if (list) {
      return context.dependOnInheritedWidgetOfExactType<InheritedLocalNotifier>()?.notifier;
    }else {
      final inhw = context.getElementForInheritedWidgetOfExactType<InheritedLocalNotifier>()?.widget;
      return inhw is InheritedLocalNotifier ? inhw.notifier : null;
    }

  }
}