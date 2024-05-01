// import 'dart:convert';
// import 'dart:ffi';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';

// var listeSearch =[];  
// Future getData()async {
//   var url = 'API';
//   var response = await http.get(url);
//   var responsebody = jsonDecode(response.body);
//   for(int i = 0 ; i < responsebody.length ; i++){
//     listeSearch.add(responsebody[i]['name']);
//   }
// }

class Search extends SearchDelegate<String>{
  // List<dynamic> list;
  // Search({this.list});
  @override
  List<Widget>? buildActions(BuildContext context) {
    // Action for AppBar
    return [IconButton(icon: Icon(Icons.clear, 
          size: 25,
          color: AppColors.primaryColor)
          ,onPressed: (){}
          )
          ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // Icon Leading
    return IconButton(icon: Icon(Icons.arrow_back_ios, 
          size: 25,
          color: AppColors.primaryColor)
          ,onPressed: (){
            close(context, 'null');
          }
          );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Results Search
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone search for somthing
    // return ListView.builder(list.length, itemBuilder: (context , i){
    //   return Text(list[i]); 
    // });
    return Text('data');
  }

}

