import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class CarsWidget extends StatefulWidget {

  final Map<String, dynamic> CarsSections ;
  const CarsWidget(this.CarsSections);

  @override
  State<CarsWidget> createState() => _CarsWidgetState();
}

class _CarsWidgetState extends State<CarsWidget> {
  @override
  Widget build(BuildContext context) {
 return InkWell(
         onTap: (){
     //   Navigator.push(context, MaterialPageRoute(builder : (_) => ProductDetailsScreen(widget.HealthSections) ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/ 2.5,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Container(
            height: MediaQuery.of(context).size.height/5.5,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.CarsSections['carsSectionsImage']),
                fit: BoxFit.fill
              )
            ),
          ),
    
           Center(
             child: Container(
               child: Column(
                 children: [
                   Container(
                      margin: EdgeInsets.all(8),
                      child :Text(
                        widget.CarsSections['carsSectionsName'], 
                        style: AppFonts.subprimaryTextStyle,
                        ),
                     ),
                
                 ],
               ),
             ),
           ),
         ]  
        ),
      ),
    );
  }
}