import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/malls/malls_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class MallsScreen extends StatefulWidget {
  const MallsScreen({super.key});

  @override
  State<MallsScreen> createState() => _MallsScreenState();
}

class _MallsScreenState extends State<MallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'malls'.tr, 
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
        itemCount: mallsData.length,
        itemBuilder: (context, index){
          return  MallsWidget(mallsData[index]);
        }
      ),

     );
  }
}