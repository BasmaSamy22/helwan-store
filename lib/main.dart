import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/main_model.dart';
import 'package:helwan_store/translation/translation_screen.dart';
import 'package:helwan_store/translation/translations.dart';
//import 'package:helwan_store/user/logic/user_controller.dart';
import 'package:scoped_model/scoped_model.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 // bool isLogedIn = false;
  
  @override
  void initState(){
 //   checkLocal();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: MainModel(), 
    child: GetMaterialApp(
      translations: Translation(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
  
    debugShowCheckedModeBanner: false,
    home:
     //LoginScreen()
     TranslationScreen()
    // isLogedIn ? BottomNavBar() : LoginScreen()
    )
   );
  }

  // checkLocal() async{

  //   bool check = await getLocal();
  //   isLogedIn = check;
  //   setState(() {});
  // }
}