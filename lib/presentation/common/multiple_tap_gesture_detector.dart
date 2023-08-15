import 'package:flutter/material.dart';

class MultipleTapGestureDetector extends InheritedWidget {
  final void Function()? onTap;

  const MultipleTapGestureDetector({
    Key? key,
    required Widget child,
    required this.onTap,
  }) : super(key: key, child: child);

  static MultipleTapGestureDetector? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MultipleTapGestureDetector>();
  }

  @override
  bool updateShouldNotify(MultipleTapGestureDetector oldWidget) => false;
}
