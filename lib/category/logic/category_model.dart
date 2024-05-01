
class CategoryModel {

  final String id;
  final String name;
  final String image;

  CategoryModel (this.id, this.image, this.name);

 factory CategoryModel.fromjson(String id, Map<String, dynamic> data){
    return CategoryModel(
      id,
      data['profile_image'] , 
      data['employee_name']
     );
  }
}