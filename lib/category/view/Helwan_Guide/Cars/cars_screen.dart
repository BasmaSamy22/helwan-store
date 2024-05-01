import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Cars/cars_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({super.key});

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: AppColors.primaryColor,
       appBar: AppBar(
        title: Text('cars'.tr, 
        style: TextStyle( color: AppColors.backgroundColor, fontSize: 25, fontWeight: FontWeight.bold),
        
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios ,
         color: AppColors.backgroundColor, 
        size: 20,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
       ),
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 220
          ),
          itemCount: CarsSections.length,
        itemBuilder: (context, index) {
          return CarsWidget(CarsSections[index]);
        },
        ),

    );
  }
}