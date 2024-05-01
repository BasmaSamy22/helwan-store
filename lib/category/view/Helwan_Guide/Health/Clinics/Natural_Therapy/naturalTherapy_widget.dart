import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class NaturalTherapyWidget extends StatefulWidget {

  final Map<String, dynamic> NaturalTherapyData;
  const NaturalTherapyWidget(this.NaturalTherapyData);

  @override
  State<NaturalTherapyWidget> createState() => _NaturalTherapyWidgetState();
}

class _NaturalTherapyWidgetState extends State<NaturalTherapyWidget> {
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
                  image: AssetImage(widget.NaturalTherapyData['naturalTherapyImage']),
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
                     Text(widget.NaturalTherapyData['naturalTherapyName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.NaturalTherapyData['naturalTherapyDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.NaturalTherapyData['naturalTherapyAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.NaturalTherapyData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.NaturalTherapyData['Phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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