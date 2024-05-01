
import 'package:helwan_store/main_model.dart';
import 'package:helwan_store/product/logic/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:scoped_model/scoped_model.dart';

mixin ProductController on Model{

  bool _isGetProductLoding = false;
  bool get isGetProductLoding => _isGetProductLoding;

  
  List<ProductModel> _allProduct = [];
  List<ProductModel> get allProduct => _allProduct;

  Future<void> getProduct() async{

  _isGetProductLoding = true;
  notifyListeners();


  http.Response response = await http.get(Uri.parse('$domainName/employees'));

  if(response.statusCode ==200){
    var productData = jsonDecode(response.body);
    productData.forEach((key, Value){
      allProduct.add(ProductModel.fromjson(key, Value));
    });
  }
  }

}