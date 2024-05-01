import 'package:flutter/material.dart';
import 'package:helwan_store/product/view/product_details_screen.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class ProductsWidge extends StatefulWidget {
  final Map<String, dynamic> ProductsData ;
  const ProductsWidge(this.ProductsData);

  @override
  State<ProductsWidge> createState() => _ProductsWidgeState();
}

class _ProductsWidgeState extends State<ProductsWidge> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder : (_) => ProductDetailsScreen(widget.ProductsData) ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/ 2.5,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Container(
            height: 150,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(widget.ProductsData['productImage']),
                fit: BoxFit.fill
              )
            ),
          ),
    
           Center(
             child: Container(
               child: Column(
                 children: [
                   Container(
                      margin: EdgeInsets.only( left: 10 , top: 5,),
                      child :Text(
                        widget.ProductsData['productName'], 
                        style: AppFonts.subprimaryTextStyle,
                        ),
                     ),
                  Container(
                      margin: EdgeInsets.only( left: 10 ),
                      child : Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('${widget.ProductsData['productPrice']}',
                       style: AppFonts.subprimaryTextStyle,
                       ),
                   )
                  ),
           
                 ],
               ),
             ),
           ),
         ]  
        ),
      ),
    );
  }
}