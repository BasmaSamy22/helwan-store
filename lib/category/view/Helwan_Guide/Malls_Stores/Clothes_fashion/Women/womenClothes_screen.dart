import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/Women/womenClothes_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class WomenClothesScreen extends StatefulWidget {
  const WomenClothesScreen({super.key});

  @override
  State<WomenClothesScreen> createState() => _WomenClothesScreenState();
}

class _WomenClothesScreenState extends State<WomenClothesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'حريمي'.tr, 
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
        itemCount: womenClothesData.length,
        itemBuilder: (context, index){
          return  WomenClothesWidget(womenClothesData[index]);
        }
      ),

     );
  }
}