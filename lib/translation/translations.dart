import 'package:get/get.dart';
import 'package:helwan_store/translation/ar.dart';
import 'package:helwan_store/translation/en.dart';

class Translation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'ar' : ar,
    'en' : en
    
  };
  
}
