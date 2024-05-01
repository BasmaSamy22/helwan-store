import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class makeUpWidget extends StatefulWidget {

  final Map<String, dynamic> makeUpData;
  const makeUpWidget(this.makeUpData);

  @override
  State<makeUpWidget> createState() => _makeUpWidgetState();
}

class _makeUpWidgetState extends State<makeUpWidget> {
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
                  image: AssetImage(widget.makeUpData['makeUpImage']),
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
                     Text(widget.makeUpData['makeUpName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 5),
    
                      ),
                      ),
                      Text(widget.makeUpData['makeUpDescription'], style: AppFonts.littleprimaryTextStyle,),
                      Text(widget.makeUpData['makeUpAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.makeUpData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      ),
                      Text(widget.makeUpData['phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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