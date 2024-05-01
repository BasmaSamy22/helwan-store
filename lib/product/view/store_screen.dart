import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
import 'package:helwan_store/demo_data.dart';
//import 'package:helwan_store/product/view/add_product.dart';
import 'package:helwan_store/shared/shared_screens/bottom_nav_bar.dart';
//import 'package:helwan_store/shared/shared_widgets/custom_button.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<StoreScreen> {

 


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        elevation: 0,
        title: Text('store'.tr, 
        style: AppFonts.titleTextStyle,),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon : Icon(Icons.arrow_back_ios, color: AppColors.backgroundColor,),
           onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
           }
           ) ,
      ),


     body: Column(
       children: [
          //    Container(
          //  alignment: AlignmentDirectional.topCenter,
          //   child: CustomButton(AppColors.primaryColor,
          //   'add_new_product'.tr,
          //           () {
          //             Navigator.push(context, MaterialPageRoute(builder: (_)=> AddProductScreen()));
          //         }
          //         ),
          // ),
         Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
            margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
            child: ListView.builder(
              itemCount: PopularCategoriesScreens.length,
              itemBuilder: (context, index){
                return 
                ListTile(
                  leading: Icon( PopularCategoriesScreens[index]['categoryIcon'], color: AppColors.backgroundColor, size: 35,),
                  title: Text( PopularCategoriesScreens[index]['categoryName'], style: AppFonts.subprimarywhiteTextStyle,),
                  trailing: Icon( Icons.arrow_forward_ios, color: AppColors.backgroundColor,),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => PopularCategoriesScreens[index]['screen']));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}