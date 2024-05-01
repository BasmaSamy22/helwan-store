import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class WomenClothesWidget extends StatefulWidget {

  final Map<String, dynamic> womenClothesData;
  const WomenClothesWidget(this.womenClothesData);

  @override
  State<WomenClothesWidget> createState() => _WomenClothesWidgetState();
}

class _WomenClothesWidgetState extends State<WomenClothesWidget> {
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
              height: MediaQuery.of(context).size.height/4.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                //color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(widget.womenClothesData['womenClothesImage']),
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
                     Text(widget.womenClothesData['womenClothesName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.womenClothesData['womenClothesDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.womenClothesData['womenClothesAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.womenClothesData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      ),
                      Text(widget.womenClothesData['phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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