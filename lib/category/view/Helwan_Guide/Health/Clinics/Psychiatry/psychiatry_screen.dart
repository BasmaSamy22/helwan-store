import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Psychiatry/psychiatry_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class PsychiatryScreen extends StatefulWidget {
  const PsychiatryScreen({super.key});

  @override
  State<PsychiatryScreen> createState() => _PsychiatryScreenState();
}

class _PsychiatryScreenState extends State<PsychiatryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'الطب النفسي'.tr, 
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
        itemCount: PsychiatryData.length,
        itemBuilder: (context, index){
          return  PsychiatryWidget(PsychiatryData[index]);
        }
      ),

     );
  }
}