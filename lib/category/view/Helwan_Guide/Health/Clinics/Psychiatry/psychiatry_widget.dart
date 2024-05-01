import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class PsychiatryWidget extends StatefulWidget {

  final Map<String, dynamic> PsychiatryData;
  const PsychiatryWidget(this.PsychiatryData);

  @override
  State<PsychiatryWidget> createState() => _PsychiatryWidgetState();
}

class _PsychiatryWidgetState extends State<PsychiatryWidget> {
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
                  image: AssetImage(widget.PsychiatryData['psychiatryImage']),
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
                     Text(widget.PsychiatryData['psychiatryName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.PsychiatryData['psychiatryDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.PsychiatryData['psychiatryAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.PsychiatryData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.PsychiatryData['Phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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