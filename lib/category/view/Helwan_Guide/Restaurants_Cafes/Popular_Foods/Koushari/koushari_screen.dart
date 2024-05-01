import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/Koushari/koushari_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class KoushariScreen extends StatefulWidget {
  const KoushariScreen({super.key});

  @override
  State<KoushariScreen> createState() => _KoushariScreenState();
}

class _KoushariScreenState extends State<KoushariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'koushari'.tr, 
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
        itemCount: KoushariRestaurantData.length,
        itemBuilder: (context, index){
          return  KoushariWidget(KoushariRestaurantData[index]);
        }
      ),

     );
  }
}


