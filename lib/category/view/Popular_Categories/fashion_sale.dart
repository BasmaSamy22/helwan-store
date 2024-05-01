import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/product/view/products_widget.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';

class FashionSaleScreen extends StatefulWidget {
  const FashionSaleScreen({super.key});

  @override
  State<FashionSaleScreen> createState() => _FashionSaleScreenState();
}

class _FashionSaleScreenState extends State<FashionSaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundColor,
       appBar: AppBar(
        title: Text('fashion'.tr, 
        style: TextStyle( color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.bold),
        
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios ,
         color: AppColors.primaryColor, 
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
          mainAxisExtent: 240
          ),
          itemCount: ProductsData.length,
        itemBuilder: (context, index) {
          return ProductsWidge(ProductsData[index]);
        },
        ),
        
    );
  }
}