import 'package:get/get.dart';
import 'package:arfan_sarkar/languages/eng.dart';
import 'package:arfan_sarkar/languages/bang.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US": eng,
    "bn_BD": bang,
  };

}