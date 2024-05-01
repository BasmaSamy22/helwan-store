import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Seafood/seafood_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class SeafoodScreen extends StatefulWidget {
  // final Map<String, dynamic> SeafoodRestaurantData ;
  // const SeafoodScreen(this.SeafoodRestaurantData);

  @override
  State<SeafoodScreen> createState() => _SeafoodScreenState();
}

class _SeafoodScreenState extends State<SeafoodScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        title: Text( 'seafood'.tr, 
        style: AppFonts.titleTextStyle,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: AppColors.backgroundColor,),
        onPressed: (){
          Navigator.pop(context);
        },
       ),
      ),

      body: ListView.builder(
        itemCount: SeafoodRestaurantData.length,
        itemBuilder: (context, index){
          return  SeafoodWidget(SeafoodRestaurantData[index]);
        }
      ),

     );
  }
}


