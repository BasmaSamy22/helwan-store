import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class PharmaciesWidget extends StatefulWidget {

  final Map<String, dynamic> PharmaciesData;
  const PharmaciesWidget(this.PharmaciesData);

  @override
  State<PharmaciesWidget> createState() => _PharmaciesWidgetState();
}

class _PharmaciesWidgetState extends State<PharmaciesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/ 2,
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
                  image: AssetImage(widget.PharmaciesData['pharmaciesImage']),
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
                     Text(widget.PharmaciesData['pharmaciesName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
                        
                      ),
                      ),
                     Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text('addressDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                            Expanded(child: Text(widget.PharmaciesData['pharmaciesAddress'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                      ),
                      
                      SizedBox(height: 15,),
                      Container(
                        child: Row(
                          children: [
                            Text('phoneDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                        Expanded(child: Text(widget.PharmaciesData['phone'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10),
                         child: Text(widget.PharmaciesData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
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