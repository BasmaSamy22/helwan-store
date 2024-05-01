import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Natural_Therapy/naturalTherapy_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class NaturalTherapyScreen extends StatefulWidget {
  const NaturalTherapyScreen({super.key});

  @override
  State<NaturalTherapyScreen> createState() => _NaturalTherapyScreenState();
}

class _NaturalTherapyScreenState extends State<NaturalTherapyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'العلاج الطبيعي'.tr, 
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
        itemCount: NaturalTherapyData.length,
        itemBuilder: (context, index){
          return  NaturalTherapyWidget(NaturalTherapyData[index]);
        }
      ),

     );
  }
}