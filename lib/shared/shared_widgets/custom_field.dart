import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

Container customFiled(IconData icon, String title, TextInputType type, TextInputAction action, TextEditingController controller, ) {
  return Container(
    margin: EdgeInsets.all(10),
    child: TextField(
                  decoration: InputDecoration(
                    border: outlineInputBorder( AppColors.backgroundColor),
                    enabledBorder: outlineInputBorder( AppColors.backgroundColor),
                     focusedBorder: outlineInputBorder( AppColors.backgroundColor),
  
                      prefixIcon: Icon(icon ,color: AppColors.backgroundColor, size: 25,),
                      labelText: title,
                      labelStyle: AppFonts.subprimarywhiteTextStyle,
                  ),
                  keyboardType: type,
                  textInputAction: action,
                  controller: controller,
                ),
             );
             
}

// bool _isSecurePassword = true;
// Container passwordFiled(IconData icon, String title, TextInputType type, TextInputAction action, TextEditingController controller, ) {
//   return Container(
//     margin: EdgeInsets.all(10),
//     child: TextField(
//                   decoration: InputDecoration(
//                     border: outlineInputBorder( AppColors.primaryColor),
//                     enabledBorder: outlineInputBorder( AppColors.primaryColor),
//                      focusedBorder: outlineInputBorder( AppColors.primaryColor),
//                       suffixIcon: togglePassword(),
//                       prefixIcon: Icon(icon ,color: AppColors.primaryColor, size: 20,),
//                       labelText: title,
//                       labelStyle: AppFonts.subprimaryTextStyle,
//                   ),
//                   keyboardType: type,
//                   textInputAction: action,
//                   controller: controller,
//                   obscureText: _isSecurePassword,
//                 ),
//              );            
// }

// Widget togglePassword(){
//   return IconButton( icon: _isSecurePassword ? Icon( Icons.visibility) : Icon( Icons.visibility_off), color: Colors.grey ,
//   onPressed:(){
//        _isSecurePassword = !_isSecurePassword;
//   });
// }


OutlineInputBorder  outlineInputBorder(Color color) {
  return OutlineInputBorder(
         borderRadius: BorderRadius.circular(20),
         borderSide: BorderSide(color: color, width: 1)
  );
}


SnackBar snack(Color color, String text,){
  return    SnackBar(
                        backgroundColor : color,
                        content: Text(text, style: AppFonts.buttonTextStyle,),
                        duration: Duration(seconds: 2),
                      );
}