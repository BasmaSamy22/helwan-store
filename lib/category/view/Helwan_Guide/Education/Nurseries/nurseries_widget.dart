import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class NurseriesWidget extends StatefulWidget {

  final Map<String, dynamic> nurseriesData;
  const NurseriesWidget(this.nurseriesData);

  @override
  State<NurseriesWidget> createState() => _NurseriesWidgetState();
}

class _NurseriesWidgetState extends State<NurseriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/ 4.5,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
        ),
     
      child: Column(
        children: [

        Container(
          child:  Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Expanded(
              child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text(widget.nurseriesData['nurseriesName'], style: AppFonts.subtitleTextStyle,),
                     ),
                     Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text('addressDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                            Expanded(child: Text( widget.nurseriesData['nurseriesAddress'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                      ),
                       Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Text('workTimes'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                            Expanded(child: Text( widget.nurseriesData['workTimes'], style: AppFonts.littleprimaryTextStyle,))
                          ],
                        ),
                      ),
                      ),
                      
                      SizedBox(height: 15,),
                      Container(
                        child: Row(
                          children: [
                            Text('phoneDetdail'.tr, style: AppFonts.littleprimaryTextStyle,),
                            
                        Expanded(child: Text(widget.nurseriesData['phone'], style: AppFonts.littleprimaryTextStyle,))
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