import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/education_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text('education'.tr, style: AppFonts.titleTextStyle,),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 25, color: AppColors.backgroundColor,),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        centerTitle: true,
        ),

        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 210
            ),
            itemCount: EducationSections.length,
          itemBuilder: (context, index) {
            return EducationWidget(EducationSections[index]);
          },),
        
    );
  }
}