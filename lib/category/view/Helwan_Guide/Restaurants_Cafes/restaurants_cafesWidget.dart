import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';

class Restaurants_cafesWidget extends StatefulWidget {

  
  final Map<String, dynamic> RestaurantsCafesSectionsData ;
  Restaurants_cafesWidget(this.RestaurantsCafesSectionsData);


  @override
  State<Restaurants_cafesWidget> createState() => _Restaurants_cafesWidgetState();
}

class _Restaurants_cafesWidgetState extends State<Restaurants_cafesWidget> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
                  onTap: () {
                    // Navigate to the corresponding screen when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => widget.RestaurantsCafesSectionsData['screen']),
                    );
                  },
      child: Container(
        margin: EdgeInsets.all(8),
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/ 4.5,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.RestaurantsCafesSectionsData['imageFood']),
                fit: BoxFit.fill
              )
              ),
            ),
      
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.RestaurantsCafesSectionsData['foodName'], style: TextStyle( color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}