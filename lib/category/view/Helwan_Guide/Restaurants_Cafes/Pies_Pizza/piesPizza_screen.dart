import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Pies_Pizza/piesPizza_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class Pies_PizzaScreen extends StatefulWidget {
  const Pies_PizzaScreen({super.key});

  @override
  State<Pies_PizzaScreen> createState() => _Pies_PizzaScreenState();
}

class _Pies_PizzaScreenState extends State<Pies_PizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        title: Text( 'pies_Pizza'.tr, 
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
        itemCount: Pies_PizzaRestaurantData.length,
        itemBuilder: (context, index){
          return  Pies_PizzaWidget(Pies_PizzaRestaurantData[index]);
        }
      ),

     );
  }
}


