import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/popular_Foods_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class PopularFoodsScreen extends StatefulWidget {
  const PopularFoodsScreen({super.key});

  @override
  State<PopularFoodsScreen> createState() => _PopularFoodsScreenState();
}

class _PopularFoodsScreenState extends State<PopularFoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        title: Text( 'popular_Foods'.tr, 
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
        itemCount: popular_FoodsRestaurantData.length,
        itemBuilder: (context, index){
          return  PopularFoodWidget(popular_FoodsRestaurantData[index]);
        }
      ),

     );
  }
}


