import 'dart:ui';

import 'package:sp_util/sp_util.dart';

class LocaleUtils {
  static const String key = 'current_language';

  static List<String> getConfig() {
    List<String> list = ['zh', 'CN'];
    String lang = SpUtil.getString(key) ?? 'zh_CN';
    if (lang.isNotEmpty) {
      List<String> langList = lang.split('_');
      if (langList.length == 2) {
        list = langList;
      }
    }

    return list;
  }

  static Locale getLocale() {
    List<String> list = getConfig();
    return Locale(list[0], list[1]);
  }

  static change({required langStr}) async {
    List<String> list = langStr.split('_');
    String langCode = 'zh';
    String countryCode = 'CN';
    if (list.length == 2) {
      langCode = list[0];
      countryCode = list[1];
    }
    var locale = Locale(langCode, countryCode);

    await SpUtil.putString(key, "${langCode}_$countryCode");
  }
}
