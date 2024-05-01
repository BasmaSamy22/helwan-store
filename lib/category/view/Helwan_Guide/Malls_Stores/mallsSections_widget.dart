import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class MallsStoresWidget extends StatefulWidget {

  final Map<String, dynamic> MallsStoresSections ;
  const MallsStoresWidget(this.MallsStoresSections);

  @override
  State<MallsStoresWidget> createState() => _MallsStoresWidgetState();
}

class _MallsStoresWidgetState extends State<MallsStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
         onTap: (){
        Navigator.push(context, MaterialPageRoute(builder : (_) => widget.MallsStoresSections['screen']));
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
                image: AssetImage(widget.MallsStoresSections['MallsStoresImage']),
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
                        widget.MallsStoresSections['MallsStoresName'], 
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