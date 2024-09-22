import 'package:evcs/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app.dart';
import 'core/di/di_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Assets.aEnv);

  await Future.wait([
    DIManager.initDI(),
  ]);

  runApp(const App());
}
