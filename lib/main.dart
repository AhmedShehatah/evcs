import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/di/di_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    DIManager.initDI(),
  ]);

  runApp(const App());
}
