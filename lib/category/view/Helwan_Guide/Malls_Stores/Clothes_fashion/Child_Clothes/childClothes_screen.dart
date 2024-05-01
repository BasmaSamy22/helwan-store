import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/Child_Clothes/childClothes_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class ChildClothesScreen extends StatefulWidget {
  const ChildClothesScreen({super.key});

  @override
  State<ChildClothesScreen> createState() => _ChildClothesScreenState();
}

class _ChildClothesScreenState extends State<ChildClothesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'اطفالي'.tr, 
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
        itemCount: childClothesData.length,
        itemBuilder: (context, index){
          return  ChildClothesWidget(childClothesData[index]);
        }
      ),

     );
  }
}