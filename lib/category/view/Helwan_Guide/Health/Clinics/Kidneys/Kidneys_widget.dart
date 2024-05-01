import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class KidneysWidget extends StatefulWidget {

  final Map<String, dynamic> KidneysData;
  const KidneysWidget(this.KidneysData);

  @override
  State<KidneysWidget> createState() => _KidneysWidgetState();
}

class _KidneysWidgetState extends State<KidneysWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/ 2.2,
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
                  image: AssetImage(widget.KidneysData['kidneysImage']),
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
                     Text(widget.KidneysData['kidneysName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.KidneysData['kidneysDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.KidneysData['kidneysAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.KidneysData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.KidneysData['Phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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