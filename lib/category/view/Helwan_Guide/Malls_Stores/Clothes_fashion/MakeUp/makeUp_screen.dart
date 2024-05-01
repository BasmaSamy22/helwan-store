import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/MakeUp/makeUp_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class makeUpScreen extends StatefulWidget {
  const makeUpScreen({super.key});

  @override
  State<makeUpScreen> createState() => _makeUpScreenState();
}

class _makeUpScreenState extends State<makeUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'Make-Up & Skin Care'.tr, 
        style: AppFonts.titleTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: AppColors.backgroundColor,),
        onPressed: (){
          Navigator.pop(context);
        },
       ),
      ),

  body: ListView.builder(
        itemCount: makeUpData.length,
        itemBuilder: (context, index){
          return  makeUpWidget(makeUpData[index]);
        }
      ),

     );
  }
}