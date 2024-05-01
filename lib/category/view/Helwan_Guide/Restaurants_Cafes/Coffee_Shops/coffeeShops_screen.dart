import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Coffee_Shops/coffeeShops_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class CoffeeShopsScreen extends StatefulWidget {
  const CoffeeShopsScreen({super.key});

  @override
  State<CoffeeShopsScreen> createState() => _CoffeeShopsScreenState();
}

class _CoffeeShopsScreenState extends State<CoffeeShopsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        title: Text( 'coffee_Shops'.tr, 
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
        itemCount: coffee_ShopsRestaurantData.length,
        itemBuilder: (context, index){
          return  CoffeeShopsWidget(coffee_ShopsRestaurantData[index]);
        }
      ),

     );
  }
}


