import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/product/view/products_widget.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';




class ProductDetailsScreen extends StatefulWidget {

  final Map<String, dynamic> ProductData;
  const ProductDetailsScreen(this.ProductData);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

 // int addProductItemCount = 1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
         title: Text('product_Details'.tr, style: AppFonts.titleTextStyle,),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
     
       leading: IconButton(
        icon: Icon(Icons.arrow_back_ios ,
         color: AppColors.txtButtonColor, 
        size: 20,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
       ),
      ),

      body: ListView(

        children: [
           Column(
             children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(widget.ProductData['productImage']),
                    fit: BoxFit.fill
                    )
                ),
               ),

                   Container(
                        margin: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                       color: AppColors.txtButtonColor,
                       borderRadius: BorderRadius.circular(20)
                       ),
                     child: Column(
                       children: [
                         Container(
                         child: ListTile(
                           title: Text(widget.ProductData['productName'], style: TextStyle( color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.bold)),
                           trailing: Text(widget.ProductData['productPrice'], style: AppFonts.subprimaryTextStyle,),
                          ),
                          
                                    ),

                       Container(
                        margin: EdgeInsets.all(15),
                       child: Align(
                        alignment: Alignment.topLeft,
                         child: Text(widget.ProductData['productDescription'],
                               style: AppFonts.descriptionTextStyle,),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(bottom: 15),
                       child: Text('01111111111', //widget.ProductData['phone']
                        style: AppFonts.subprimaryTextStyle,
                        ),
                     )

                   ],
                 ),
               ),

               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left:8, right: 8, top: 5 ),
                     child: Text('similar_products'.tr, style: AppFonts.titleTextStyle),
                   ),
                 ],
               ),

           
            Container(
              height: MediaQuery.of(context).size.height / 3.4,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(5, 10, 5, 10),

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ProductsData.length,
                itemBuilder: (context, index) {
                  return ProductsWidge(ProductsData[index]);
                }
              ),

              )
             ],
           ),
         ],
       )
     );
  }

 
}