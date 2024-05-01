
class ProductModel {

  final String productId;
  final String productName;
  final String productPhone;
  final String productDescription;
  final int productSale_price;
  final String productImage;

  ProductModel (this.productId, this.productName, this.productPhone, this.productDescription, this.productSale_price, this.productImage);
  

  
  factory ProductModel.fromjson(String productId, Map<String, dynamic> productData){
    return ProductModel(
      productId,
      productData['name'] ,//productName
      productData['phone'], //productPhone
      productData['description'], //productDescription,
      productData['sale_price'], //productSale_price,
      productData['image'], //productImage
      
      );
  }
}