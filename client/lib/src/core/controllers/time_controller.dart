import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@singleton
class TimeController extends ChangeNotifier {
  late DateTime current;
  late Timer timer;

  @postConstruct
  void init() {
    timer = Timer.periodic(Duration(seconds: 1), _tick);
  }

  void _tick(Timer timer) {
    current = DateTime.now();
    notifyListeners();
  }
}
