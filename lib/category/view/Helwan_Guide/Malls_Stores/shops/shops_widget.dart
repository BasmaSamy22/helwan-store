import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class ShopsWidget extends StatefulWidget {

  final Map<String, dynamic> shopsData;
  const ShopsWidget(this.shopsData);

  @override
  State<ShopsWidget> createState() => _ShopsWidgetState();
}

class _ShopsWidgetState extends State<ShopsWidget> {
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
                  image: AssetImage(widget.shopsData['shopsImage']),
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
                     Text(widget.shopsData['shopsName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.shopsData['shopsDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.shopsData['shopsAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.shopsData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.shopsData['phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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