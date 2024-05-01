

import 'package:helwan_store/category/logic/category_model.dart';
import 'package:helwan_store/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

mixin categoryController on Model{

  bool _isGetCategoryLoging = false;
  bool get isGetCategoryLoging => _isGetCategoryLoging;

  List<CategoryModel> _allCategories =[];
  List<CategoryModel> get allCategories => _allCategories;

  Future<void> getCategories() async{

    _isGetCategoryLoging = true;
    notifyListeners();

    http.Response response = await http.get(Uri.parse('$domainName/employees'));

    if(response.statusCode ==200){
      var data = jsonDecode(response.body);
      data.forEach((key, Value){
       allCategories.add(CategoryModel.fromjson(key, Value)) ;
      });
    }
  }
}