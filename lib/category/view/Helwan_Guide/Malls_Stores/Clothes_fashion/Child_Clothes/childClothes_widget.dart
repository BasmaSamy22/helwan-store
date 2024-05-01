import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class ChildClothesWidget extends StatefulWidget {

  final Map<String, dynamic> childClothesData;
  const ChildClothesWidget(this.childClothesData);

  @override
  State<ChildClothesWidget> createState() => _ChildClothesWidgetState();
}

class _ChildClothesWidgetState extends State<ChildClothesWidget> {
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
                  image: AssetImage(widget.childClothesData['childClothesImage']),
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
                     Text(widget.childClothesData['childClothesName'],  style: AppFonts.subtitleTextStyle),
                      Container(
                     // margin: EdgeInsets.only(left: 5),
                      child:  Padding(
                        padding: const EdgeInsets.only(top: 15),
    
                      ),
                      ),
                      Text(widget.childClothesData['childClothesAddress'], style: AppFonts.littleprimaryTextStyle,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.childClothesData['workTimes'], style: AppFonts.littleprimaryTextStyle,),
                      ),
                      Text(widget.childClothesData['phone'], style: AppFonts.littleprimaryTextStyle,)
                                 
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