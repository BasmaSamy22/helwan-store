
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Health_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key});

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
           appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        title: Text('health'.tr, style: AppFonts.titleTextStyle,),
        centerTitle: true,

        leading: IconButton( icon: Icon(Icons.arrow_back_ios, color: AppColors.backgroundColor,),
         onPressed: (){
          Navigator.pop(context);
         }),
     ),

     body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 210
        ),
      itemCount: HealthSections.length,
      itemBuilder: ((context, index) {
        return HealthWidget(HealthSections[index]);
      }
    )
   ),
  );
 }
}