import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/restaurants_cafesWidget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class Restaurants_cafesScreen extends StatefulWidget {
  const Restaurants_cafesScreen({super.key});

  @override
  State<Restaurants_cafesScreen> createState() => _Restaurants_cafesScreenState();
}

class _Restaurants_cafesScreenState extends State<Restaurants_cafesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
          title: Text( 'restaurants_cafes'.tr, 
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
        itemCount: RestaurantsCafesSectionsData.length,
        itemBuilder: (context, index){
          return Restaurants_cafesWidget(RestaurantsCafesSectionsData[index]);
        }
        )
      
    //    ListView.builder(
    //     itemCount: RestaurantsCafesSectionsData.length,
    //     itemBuilder: (context, index){
    //       return InkWell(
    //               // onTap: () {
    //               //   // Navigate to the corresponding screen when tapped
    //               //   Navigator.push(
    //               //     context,
    //               //   //  MaterialPageRoute(builder: (context) => RestaurantsCafesSectionsData[index].restaurantTypeScreen),
    //               //   );
    //               // },
    //   child: Container(
    //     margin: EdgeInsets.all(8),
    //     width: 200,
    //     decoration: BoxDecoration(
    //       color: AppColors.backgroundColor,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     child: Column(
    //       children: [
    //         Container(
    //           height: MediaQuery.of(context).size.height/ 4.5,
    //           margin: EdgeInsets.all(8),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(20),
    //         //  image: DecorationImage( // Icon(guideitems[index].categoryIcon)
    //         //     image:
    //         //      AssetImage(RestaurantsCafesSectionsData[index].restaurantTypeImage),
    //         //    fit: BoxFit.fill
    //         // )
    //           ),
    //         ),
    //         Container(
    //           child: Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Text(RestaurantsCafesSectionsData[index].restaurantTypeName, style: TextStyle( color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.bold)),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
    //     }
    //     )
    );
  }
}
  