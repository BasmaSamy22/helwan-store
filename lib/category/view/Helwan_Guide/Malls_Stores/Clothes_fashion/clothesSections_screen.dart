import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/clothesSections_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class ClothesSectionsScreen extends StatefulWidget {
  const ClothesSectionsScreen({super.key});

  @override
  State<ClothesSectionsScreen> createState() => _ClothesSectionsScreenState();
}

class _ClothesSectionsScreenState extends State<ClothesSectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'clothes_fashion'.tr, 
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


     body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 210
        ),
      itemCount: clothes_fashionSections.length,
      itemBuilder: ((context, index) {
        return ClothesSectionsWidget(clothes_fashionSections[index]);
      }
    )
   ),
  );
 }
}
