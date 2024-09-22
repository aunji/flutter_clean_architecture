import 'package:get/get.dart';
import 'en_us.dart';
import 'de_de.dart';
import 'th_th.dart';
import 'cn_cn.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'de_DE': deDE,
        'th_TH': thTH,
        'cn_CN': cnCN,
      };
}
