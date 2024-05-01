import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class FastFoodWidget extends StatefulWidget {

  final Map<String, dynamic> FastFoodRestaurantData;
  const FastFoodWidget(this.FastFoodRestaurantData);

  @override
  State<FastFoodWidget> createState() => _FastFoodWidgetState();
}

class _FastFoodWidgetState extends State<FastFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/ 2.1,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
        ),
     
      child: Column(
        children: [
            Container(
              margin: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(widget.FastFoodRestaurantData['fastFoodRestaurantImage']),
                  fit: BoxFit.fill
                  )
                ),
            ),
      

        Container(
          child:  Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Expanded(
              child: Column(
                   children: [
                     Text(widget.FastFoodRestaurantData['fastFoodRestaurantName'], style: AppFonts.subtitleTextStyle,),
                     Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text('addressDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                            Expanded(child: Text( widget.FastFoodRestaurantData['fastFoodRestaurantAddress'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                      ),
                      
                      SizedBox(height: 15,),
                      Container(
                        child: Row(
                          children: [
                            Text('phoneDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                        Expanded(child: Text(widget.FastFoodRestaurantData['Phone'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                                 
                   ],
                   
                  ),
            ),
          ),
        ),
        ],
      )
        );
  }
}