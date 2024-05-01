import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/Nurseries/nurseries_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class NurseriesScreen extends StatefulWidget {
  const NurseriesScreen({super.key});

  @override
  State<NurseriesScreen> createState() => _NurseriesScreenState();
}

class _NurseriesScreenState extends State<NurseriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'nurseries'.tr, 
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
        itemCount: nurseriesData.length,
        itemBuilder: (context, index){
          return  NurseriesWidget(nurseriesData[index]);
        }
      ),

     );
  }
}