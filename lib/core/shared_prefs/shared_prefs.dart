import 'package:get_storage/get_storage.dart';

import '../../../core/constants/app_consts.dart';

class SharedPrefs {
  final isFirstLaunch =
      ReadWriteValue('isFirstLaunch${AppConsts.appName}', true);
  final appLanguageCode =
      ReadWriteValue('appLanguageCode${AppConsts.appName}', AppConsts.LANG_EN);
  final _token = ReadWriteValue<String?>("token:${AppConsts.appName}", null);
  String? getToken() => _token.val;
  void setToken(String token) => _token.val = token;

  void logOut() {
    _token.val = null;
  }
}
