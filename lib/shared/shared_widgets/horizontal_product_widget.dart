import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helwan_store/product/view/product_details_screen.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class HorizontalProductWidget extends StatefulWidget {
  final Map<String, dynamic> ProductsData ;
  const HorizontalProductWidget(this.ProductsData);

  @override
  State<HorizontalProductWidget> createState() => _HorizontalProductWidgetState();
}

class _HorizontalProductWidgetState extends State<HorizontalProductWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/ 5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
        ),
     
      child: Row(
        children: [
          InkWell(
            onTap: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ProductDetailsScreen(widget.ProductsData) ));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.height/4.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(widget.ProductsData['productImage']),
                  fit: BoxFit.fill
                  )
                ),
            ),
            
          ),
    
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/5,
              //color: Colors.grey,
          
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                       alignment: Alignment.topLeft,
                        child:
                          Column(
                           children: [
                             Text(widget.ProductsData['productName'], style: AppFonts.subprimaryTextStyle,),
                             Text('\n${widget.ProductsData['productPrice']}', style: AppFonts.priceTextStyle,),
                     
                           ],
                           
                          )
                      ),
                          
                    
                    ],
                  ),
                ], 
              ),
            ),
          ),
        ],
        )
    );
    }
  }
