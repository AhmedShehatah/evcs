import 'package:get_storage/get_storage.dart';

import '../../../core/constants/app_consts.dart';

class SharedPrefs {
  final isFirstLaunch =
      ReadWriteValue('isFirstLaunch${AppConsts.appName}', true);
  final appLanguageCode =
      ReadWriteValue('appLanguageCode${AppConsts.appName}', AppConsts.LANG_EN);

  String getToken() => 'token';
}
