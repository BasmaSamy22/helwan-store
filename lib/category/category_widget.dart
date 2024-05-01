import 'package:flutter/material.dart';

class CategoryWidget {

  final String categoryName;
  final IconData categoryIcon;
  final Widget screen;

  CategoryWidget({required this.categoryName, required this.categoryIcon, required this.screen});

}


// import 'package:flutter/material.dart';
// import 'package:helwan_store/category/category_details.dart';
// import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
// import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

// class CategoryWidget extends StatefulWidget {

//   final String categoryName;
//   final IconData categoryIcon;
//   final Widget screen;
//   CategoryWidget({required this.categoryName, required this.categoryIcon, required this.screen});

//   @override
//   State<CategoryWidget> createState() => _CategoryWidgetState();
// }

// class _CategoryWidgetState extends State<CategoryWidget> {

//   @override
//   Widget build(BuildContext context) {
//     return  InkWell(
//       onTap: () {                                                       ///ProductDetails(widget.ProductsData////
//         Navigator.push(context, MaterialPageRoute(builder : (_) => CategoryDetails() ));
//       },
//       child: Container(
//                     width: MediaQuery.of(context).size.width / 4.3,
//                     margin: EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 60,
//                           width: 70,
//                           margin: EdgeInsets.only(bottom: 7),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: AppColors.txtButtonColor
//                           ),
//                           child: Icon( widget.categoryIcon, color: AppColors.primaryColor ,size: 30,),
//                         ),
                        
//                          Text( widget.categoryName, style: AppFonts.subprimarywhiteTextStyle, )
                       
//                       ],
//                     ),
//                   )
//     );
//   }
// }