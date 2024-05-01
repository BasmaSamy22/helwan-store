import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/FollAndTamiya/follAndTamiya_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class FollAndTamiyaScreen extends StatefulWidget {
  const FollAndTamiyaScreen({super.key});

  @override
  State<FollAndTamiyaScreen> createState() => _FollAndTamiyaScreenState();
}

class _FollAndTamiyaScreenState extends State<FollAndTamiyaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'fool'.tr, 
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
        itemCount: follAndTamiyaRestaurantData.length,
        itemBuilder: (context, index){
          return  FollAndTamiyaWidget(follAndTamiyaRestaurantData[index]);
        }
      ),

     );
  }
}


