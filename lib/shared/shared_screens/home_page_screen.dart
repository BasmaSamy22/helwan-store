import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/product/view/add_product.dart';
//import 'package:helwan_store/main_model.dart';
//import 'package:helwan_store/shared/shared_screens/notificationScreen.dart';
import 'package:helwan_store/shared/shared_widgets/custom_button.dart';
import 'package:helwan_store/product/view/products_widget.dart';
import 'package:helwan_store/shared/shared_widgets/shared_icons.dart';
//import 'package:helwan_store/shared/shared_widgets/shared_icons.dart';
import 'package:helwan_store/shared/shared_widgets/sponsored_ads_widget.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';
//import 'package:scoped_model/scoped_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    // return ScopedModelDescendant(
    //   builder: (context, child, MainModel model){
        return  Scaffold(
      backgroundColor: AppColors.primaryColor,
    appBar: AppBar(
        title: Text( 'home_title'.tr, 
        style: AppFonts.titleTextStyle,
        ),

        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,

  
        leading: IconButton(
          icon: Icon(Icons.search, 
          size: 25,
          color: AppColors.backgroundColor,
          ),

          onPressed: (){
            showSearch(context: context, delegate: Search(
           //   list : listeSearch
              ));
         }
        )
      ),

   
      body: ListView(
          children: [ 
            Container(
              height: MediaQuery.of(context).size.height/ 3,
             
              child: SponsoredAdsWidget()),
           
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('helwan_Guide'.tr, style: AppFonts.primaryTextStyle,),
              ),

           ///////////////////////////////////////helwan Guide items ////////////////////////////////////
           Container(
              height: 130,
              child:Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: guideitems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigate to the corresponding screen when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => guideitems[index].screen),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          margin: EdgeInsets.only(bottom: 7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.txtButtonColor
                          ),
                          child: Icon(guideitems[index].categoryIcon, color: AppColors.primaryColor,)
                          ),
                          
                        Text(guideitems[index].categoryName, style: AppFonts.subprimarywhiteTextStyle,),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('best_seller'.tr, style: AppFonts.primaryTextStyle, ),
                ),
                // InkWell(
                //   onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (_)=> AddProductScreen()));
                 // },
                //   child: Container(
                //     height: 45,
                //     width: 160,
                //     decoration: BoxDecoration(
                //       color: AppColors.primaryColor,
                //       borderRadius: BorderRadius.circular(15)
                //       ),
                //       child: Center(child: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Text('add_new_product'.tr, style: AppFonts.buttonTextStyle, ),
                //       )
                //       ),
                      
                //   ),
                // )

                Container( 
                  child: CustomButton(
                    AppColors.txtButtonColor, 
                    'add_new_product'.tr,
                    () {////////////////////////////////////////////////////////////////////////////////
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> AddProductScreen()));
                  }
                ),
              )
             ],
            ),


            Container(
              height: MediaQuery.of(context).size.height / 1.6,
              margin: EdgeInsets.all(10),
            //  color: AppColors.primaryColor,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 240 ,
              ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ProductsWidge(ProductsData[index]);
            },
            )
            ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('popular_categories'.tr
                ,style: AppFonts.primaryTextStyle,),
              ),

              /////////////////////////////////////////////////Category/////////////////////////////////
            Container(
              height: 130,
              child: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: guideitems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigate to the corresponding screen when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => guideitems[index].screen),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          margin: EdgeInsets.only(bottom: 7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.txtButtonColor
                          ),
                          child: Icon(guideitems[index].categoryIcon)
                          ),
                      //  SizedBox(height: 4),
                        Text(guideitems[index].categoryName),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      
            ),


             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('new_Arrival'.tr, style: AppFonts.primaryTextStyle,),
             ),
             Container(
              height: MediaQuery.of(context).size.height / 3.2,
              width: MediaQuery.of(context).size.width / 5,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProductsData.length,
                itemBuilder:(context, index){
                  return ProductsWidge(ProductsData[index]);
                } ,
              ),

            ),

          ],
        ),

    );
      }
     // );
   
 // }


}

