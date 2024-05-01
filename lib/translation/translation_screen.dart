import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shared_screens/bottom_nav_bar.dart';
import 'package:helwan_store/shared/shared_widgets/custom_button.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';
//import 'package:helwan_store/user/views/login_screen.dart';

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {

    String language = '';
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body:Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Text('مرحبا بك في', style: AppFonts.hugeprimaryTextStyle,),
              ),
              Text('Welcome in', style: AppFonts.hugeprimaryTextStyle,),
              Container(
                margin: EdgeInsets.all(30),
                        height: 180,
                        width: MediaQuery.of(context).size.width / 2,
                       // decoration: BoxDecoration(
                          
                        //   image: DecorationImage(
                        //     image: AssetImage('assets/logo.png'),
                        //     fit: BoxFit.fill
                        //     ) 
                        // ),
                        
      decoration: BoxDecoration(
    color: Colors.white,
    image:  DecorationImage(
     image: AssetImage('assets/logo.png'),
      fit: BoxFit.cover,
    ),
    border: Border.all(
      width: 8,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
              ),

              Text('الرجاء اختيار اللغه', style: AppFonts.titleTextStyle,),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Text('Please select the language', style: AppFonts.titleTextStyle,),
              ),

              Padding(
                padding:  EdgeInsets.fromLTRB(60, 10, 60, 5),
                child: Row(
                  children: [
                    CustomButton(AppColors.txtButtonColor,
                    'English', (){
                    setState(() {});
                    language = 'en';
                    Get.updateLocale(Locale(language));
                    Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
                    }
                    ),
                
                    SizedBox(width: 90,),
                
                    CustomButton(AppColors.txtButtonColor,
                    'العربيه', (){
                    setState(() {});
                    language = 'ar';
                    Get.updateLocale(Locale(language));
                    Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
                    }
                    ),
                   
                  ],
                ),
              )


              // ListTile(
              //         leading: Icon(Icons.language, color: AppColors.subprimaryColor, size: 20,),
              //         title: Text('Language', style: AppFonts.primaryTextStyle,),
              //         subtitle: Text(language),
              //         trailing: PopupMenuButton(
              //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //           icon: Icon(Icons.arrow_drop_down, color: AppColors.subprimaryColor),
              //           color: Colors.white,
              //           iconSize: 35,
              //           itemBuilder: (context){
              //             return <PopupMenuEntry<String>>[
              //               PopupMenuItem(
              //                 child: Text('English'),
              //                 value: 'en',
              //                 ),
              //                   PopupMenuItem(
              //                 child: Text('عربي'),
              //                 value: 'ar',
              //                 ),
              //             ];
              //           },
              //           onSelected: (value) {
              //             language = value;      
              //             setState(() {});
              //            Get.updateLocale(Locale(language));
              //                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              //           },
              //           ),
              //        ),


            ],
          ),
        ),
      )
    );
  }
}