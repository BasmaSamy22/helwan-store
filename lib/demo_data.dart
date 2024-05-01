import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/category_widget.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/Centers/centers_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/Nurseries/nurseries_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/School/schools_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Anf/anf_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Batna/batna_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Beauty/beauty_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Bones/bones_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Chest/chest_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Child/child_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Dentist/dentist_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Eye/eye_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Graha/graha_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Heart/heart_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Kidneys/kidneys_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Mokh/mokh_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Natural_Therapy/naturalTherapy_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Psychiatry/psychiatry_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Skin/skin_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/Women/women_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Clinics/clinics_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Health_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Education/education_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Hospitals/hospitals_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Lap/lap_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Health/Pharmacies/pharmacies_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Maintenance/maintenance_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/Child_Clothes/childClothes_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/MakeUp/makeUp_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/Women/womenClothes_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/clothesSections_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/Clothes_fashion/men/men_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/malls/malls_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/mallsSections_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/shops/shops_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Offers/offers_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Coffee_Shops/coffeeShops_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Dessert/dessert_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/FastFood/fastFoodScreen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Grilled/grilled_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Pies_Pizza/piesPizza_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/FollAndTamiya/follAndTamiya_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/Koushari/koushari_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/Liver/liver_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Popular_Foods/popular_Foods_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/Seafood/seafood_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Restaurants_Cafes/restaurants_cafes_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Cars/cars_screen.dart';
import 'package:helwan_store/category/view/Helwan_Guide/online/online_screen.dart';
import 'package:helwan_store/category/view/Popular_Categories/clothes_sale.dart';
import 'package:helwan_store/category/view/Popular_Categories/electronic_sale.dart';
import 'package:helwan_store/category/view/Popular_Categories/fashion_sale.dart';
import 'package:helwan_store/category/view/Popular_Categories/food_sale.dart';
import 'package:helwan_store/category/view/Popular_Categories/furniture_sale.dart';
import 'package:helwan_store/category/view/Popular_Categories/real_estate_sale.dart';
 
List<Map<String, dynamic>> categoryData =[

{
  'categoryName' : 'real_estate'.tr,
  'categoryIcon' : Icons.real_estate_agent_outlined
},
{
  'categoryName' : 'cars'.tr,
  'categoryIcon' : Icons.car_rental_outlined
},
{
  'categoryName' : 'electronic'.tr,
  'categoryIcon' : Icons.devices_other_outlined
},
{
  'categoryName' : 'furniture'.tr,
  'categoryIcon' : Icons.weekend_rounded
},
{
  'categoryName' : 'clothes'.tr,
  'categoryIcon' : Icons.checkroom
},
{
  'categoryName' : 'fashion'.tr,
  'categoryIcon' : Icons.woman
},
{
  'categoryName' : 'food'.tr,
  'categoryIcon' : Icons.dinner_dining
},
];


List<Map<String, dynamic>> ProductsData =[

{ 'id' : '0',
  'productImage' : 'https://www.si.com/.image/ar_1.91%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_xy_center%2Cq_auto:good%2Cw_1200%2Cx_2365%2Cy_2477/MTk4MzEyMzMxNjA2NzYzMzQ5/new-balance-murray.jpg',
  'productName' : 'Shoes',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '400 LE',
  'phone' : '01111111111'
},
{
  'id' : '1',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGCtJjbZAEI63SoHFJYuqk56NeUbdX89CHO1MttR4cyVeyQeu9j6dnw0eM2_sEixCi7IQ&usqp=CAU',
  'productName' : 'Dress',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '300 LE',
  'phone' : '01111111111'
},
{
  'id' : '2',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGZMZ-nuFF1J3cPjMLodk3gERI-Tq83KxdBw&usqp=CAU',
  'productName' : 'Refrigerator',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '5300 LE',
  'phone' : '01111111111'
},
{
  'id' : '3',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUFy-I6hSUSaf-1aEaF0DKj_VdtrKv_uQ2JlLHyOGB-1oxgQCZ9lWKyXpeNns3HF0h51g&usqp=CAU',
  'productName' : 'Washing machine',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '3600 LE',
  'phone' : '01111111111'
},
{
  'id' : '4',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDVnv58YxS-gnpytoNLt534QjEoqkk5g03Vg&usqp=CAU',
  'productName' : 'Mobile',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '7300 LE',
  'phone' : '01111111111'
},
{
  'id' : '5',
  'productImage' : 'https://www.si.com/.image/ar_1.91%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_xy_center%2Cq_auto:good%2Cw_1200%2Cx_2365%2Cy_2477/MTk4MzEyMzMxNjA2NzYzMzQ5/new-balance-murray.jpg',
  'productName' : 'Shoes',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '4300 LE',
  'phone' : '01111111111'
},
{
  'id' : '6',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQabaahtlsHdzOBgUtZ5XXbLLr1CjeOcxF6xP4QJxAW545vocNOGWy_vD028o5sYscj5uk&usqp=CAU',
  'productName' : 'Dress',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '2300 LE',
  'phone' : '01111111111'
},
{
  'id' : '7',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGZMZ-nuFF1J3cPjMLodk3gERI-Tq83KxdBw&usqp=CAU',
  'productName' : 'Refrigerator',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '300 LE',
  'phone' : '01111111111'
},
{
  'id' : '8',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUFy-I6hSUSaf-1aEaF0DKj_VdtrKv_uQ2JlLHyOGB-1oxgQCZ9lWKyXpeNns3HF0h51g&usqp=CAU',
  'productName' : 'Washing machine',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '300 LE',
  'phone' : '01111111111'
},
{
  'id' : '9',
  'productImage' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDVnv58YxS-gnpytoNLt534QjEoqkk5g03Vg&usqp=CAU',
  'productName' : 'mobile',
  'productDescription' : 'Products  description description  description description description description  description description description description  description description description description  description description',
  'productPrice' : '300 LE',
  'phone' : '01111111111'
},
];


 List<Map<String, dynamic>> PopularCategoriesScreens =[
{
  'categoryName' : 'real_estate'.tr,
  'categoryIcon' : Icons.real_estate_agent_outlined,
  'screen' : RealEstateSaleScreen(),
},
{
  'categoryName' : 'electronic'.tr,
  'categoryIcon' : Icons.devices_other_outlined,
  'screen' : ElectronicSaleScreen(),
},
{
  'categoryName' : 'furniture'.tr,
  'categoryIcon' : Icons.weekend_rounded,
  'screen' : FurnitureSaleScreen(),
},
{
  'categoryName' : 'clothes'.tr,
  'categoryIcon' : Icons.checkroom,
  'screen' : ClothesSaleScreen(),
},
{
  'categoryName' : 'fashion'.tr,
  'categoryIcon' : Icons.woman,
  'screen' : FashionSaleScreen(),
},
{
  'categoryName' : 'food'.tr,
  'categoryIcon' : Icons.dinner_dining,
  'screen' : FoodSaleScreen(),
},
];


final List<CategoryWidget> guideitems = [
    // ListItem(
    //   name: 'Screen 1',
    //   icon: Icons.home,
    //   screen: Screen1(),
    // ),
    // ListItem(
    //   categoryName: 'Screen 2',
    //   icon: Icons.settings,
    //   screen: Screen2(),
    // ),
CategoryWidget(
  categoryName : 'offers'.tr,
  categoryIcon : Icons.percent_sharp,
  screen : OffersScreen()
),
CategoryWidget(
  categoryName : 'restaurants_cafes'.tr,
  categoryIcon : Icons.restaurant,
  screen : Restaurants_cafesScreen()
),
CategoryWidget(
  categoryName : 'health'.tr,
  categoryIcon : Icons.medical_services,
  screen : HealthScreen()
),
CategoryWidget(
  categoryName : 'malls_stores'.tr,
  categoryIcon : Icons.store_sharp,
  screen : MallsStoresScreen()
),
CategoryWidget(
  categoryName : 'online'.tr,
  categoryIcon : Icons.language,
  screen : OnlineScreen()
),
CategoryWidget(
  categoryName : 'education'.tr,
  categoryIcon : Icons.school,
  screen : EducationScreen()
),
CategoryWidget(
  categoryName : 'cars'.tr,
  categoryIcon : Icons.directions_car_rounded,
  screen : CarsScreen(),
),
CategoryWidget(
  categoryName : 'maintenance'.tr,
  categoryIcon :  Icons.build,
  screen : MaintenanceScreen()
),
];

List<Map<String, dynamic>> offersData =[
{
  'offersImage' : '',
  'offersName' : 'paris',
  'offersDescription' : '',
  'offersAddress' : '46 راغب علي شريف بجوار ماكدونالدز',
  'Phone' : '01127244464',
},
{
  'offersImage' : '',
  'offersName' : 'اولاد تمام',
  'offersDescription' : 'مستحضرات التجميل والعناية بالبشرة والمنظفات',
  'offersAddress' : 'شارع منصور خلف سنترال حلوان',
  'Phone' : '01050240193',
},
{
  'offersImage' : '',
  'offersName' : 'Nader-E',
  'offersDescription' : 'Wedding Planner',
  'offersAddress' : '',
  'Phone' : '01067726250',
},
{
  'offersImage' : '',
  'offersName' : 'سين',
  'offersDescription' : 'تفصيل اونلاين',
  'offersAddress' : '',
  'Phone' : '01143379910',
},
{
  'offersImage' : '',
  'offersName' : 'الشعراوى للمشويات',
  'offersDescription' : '',
  'offersAddress' : 'مجاورة 2 . قريب من مسجد الجامع و خلف مدرسة غبور و وحده مرور 15 مايو',
  'Phone' : '01155620466',
},
];

List<Map<String, dynamic>> RestaurantsCafesSectionsData =[
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/grilled.jpg',
  'foodName' : 'grilled'.tr,
  'screen' : GrilleScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/seafood.jpg',
  'foodName' : 'seafood'.tr,
  'screen' : SeafoodScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/fast_food.jpg',
  'foodName' : 'fast_Food'.tr,
  'screen' : FastFoodScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/dessert.jpg',
  'foodName' : 'dessert'.tr,
  'screen' : DessertScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/pies_pizza.jpg',
  'foodName' : 'pies_Pizza'.tr,
  'screen' : Pies_PizzaScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/popular_foods.jpg',
  'foodName' : 'popular_Foods'.tr,
  'screen' : PopularFoodsScreen()
},
{
  'imageFood' : 'assets/guide/food/RestaurantsCafesImages/coffee_shops.jpg',
  'foodName' : 'coffee_Shops'.tr,
  'screen' : CoffeeShopsScreen()
},
];


// final List<Restaurants_cafesWidget> RestaurantsCafesSectionsData =[
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/grilled.jpg'),) ,
//   restaurantTypeName : 'grilled'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/seafood.jpg'),),
//   restaurantTypeName : 'seafood'.tr,
//   restaurantTypeScreen : SeafoodScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/fast_food.jpg'),),
//   restaurantTypeName : 'fast_Food'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/dessert.jpg'),),
//   restaurantTypeName : 'dessert'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/pies_pizza.jpg'),),
//   restaurantTypeName : 'pies_Pizza'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/popular_foods.jpg'),),
//   restaurantTypeName : 'popular_Foods'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// Restaurants_cafesWidget(
//   restaurantTypeImage : Image(image: AssetImage('assets/guide/food/RestaurantsCafesImages/coffee_shops.jpg'),),
//   restaurantTypeName : 'coffee_Shops'.tr,
//   restaurantTypeScreen : GrilleScreen()
// ),
// ];



List<Map<String, dynamic>> GrilleRestaurantData =[
{
  'grilleRestaurantImage' : 'assets/guide/food/grilled/haty_gaber.jpg',
  'grilleRestaurantName' : 'حاتي جابر',
  'grilleRestaurantAddress' : '20شارع حيدر، عبد الرحمن، تقاطع، محافظة القاهرة',
  'Phone' : '01006444955',
},
{
  'grilleRestaurantImage' : 'assets/guide/food/grilled/abo_fahma.jpg',
  'grilleRestaurantName' : 'ابو فحمه',
  'grilleRestaurantAddress' : 'برهان، تقاطع يوسف',
  'Phone' : '01096080712',
},
];


List<Map<String, dynamic>> SeafoodRestaurantData =[
{
  'seafoodeRestaurantImage' :'assets/guide/food/Seafood/tata.png',
  'seafoodeRestaurantName' : 'طأطأ',
  'seafoodeRestaurantAddress' : 'محمد سيد أحمد، قسم حلوان، محافظة القاهرة 11421',
  'Phone' : '0228182731',
},
{
  'seafoodeRestaurantImage' :'assets/guide/food/Seafood/elsharqawii.png',
  'seafoodeRestaurantName' : 'الشرقاوي',
  'seafoodeRestaurantAddress' : 'شارع رايل ـ تقاطع شارع محمد سيد احمد ـ حلوان ـ امام سنتر النصر الرياضي',
  'Phone' : '+201028777388 / +201122215529 / 0227136866',
},
{
  'seafoodeRestaurantImage' :'assets/guide/food/Seafood/waly_elsham.png',
  'seafoodeRestaurantName' : 'اسماك ولي الشام',
  'seafoodeRestaurantAddress' : 'أمام العصر الحديث, محمد مصطفى المراغي، حلوان الشرقية، قسم حلوان، محافظة القاهرة 4036431',
  'Phone' : '01096080712',
},
{
  'seafoodeRestaurantImage' :'assets/guide/food/Seafood/mog.jpg',
  'seafoodeRestaurantName' : 'موج البحر',
  'seafoodeRestaurantAddress' : 'شارع برهان، قسم حلوان، محافظة القاهرة 4035201',
  'Phone' : '01140205666',
},
];


List<Map<String, dynamic>> FastFoodRestaurantData =[
{
  'fastFoodRestaurantImage' : 'assets/guide/food/fastFood/syrian_house.jpg',
  'fastFoodRestaurantName' : 'البيت السوري',
  'fastFoodRestaurantAddress' : '46 شريف، حلوان الشرقية، قسم حلوان،، محافظة القاهرة 11722',
  'Phone' : '0201102472156',
},
{
  'fastFoodRestaurantImage' : 'assets/guide/food/fastFood/zaks.jpg',
  'fastFoodRestaurantName' : 'زاكس',
  'fastFoodRestaurantAddress' : 'حلوان البلد، قسم حلوان، محافظة القاهرة',
  'Phone' : '01159030411',
},
{
  'fastFoodRestaurantImage' : 'assets/guide/food/fastFood/wali_elsham.jpg',
  'fastFoodRestaurantName' : 'ولي الشام',
  'fastFoodRestaurantAddress' : 'أمام العصر الحديث, محمد مصطفى المراغي، حلوان الشرقية، قسم حلوان، محافظة القاهرة 4036431',
  'Phone' : '01211110054',
},
{
  'fastFoodRestaurantImage' : 'assets/guide/food/fastFood/heart_attack.jpg',
  'fastFoodRestaurantName' : 'هارت اتاك',
  'fastFoodRestaurantAddress' : '43 محمد مصطفى المراغي، حلوان الشرقية، قسم حلوان، محافظة القاهرة 4035045',
  'Phone' : '15428',
},
{
  'fastFoodRestaurantImage' : 'assets/guide/food/fastFood/bazokaa.jpg',
  'fastFoodRestaurantName' : 'بازوكا',
  'fastFoodRestaurantAddress' : 'شارع أحمد راغب باشا، قسم حلوان، محافظة القاهرة4035034',
  'Phone' : '01122980170',
},
];


List<Map<String, dynamic>> DessertRestaurantData =[
{
  'dessertRestaurantImage' : 'assets/guide/food/desert/el_mesawi.jpg',
  'dessertRestaurantName' : 'المساوي',
  'dessertRestaurantAddress' : '16 شارع خسرو تقاطع شارع عبد الرحمن حلوان القاهرة، 11722',
  'Phone' : '02 27072180',
},
{
  'dessertRestaurantImage' : 'assets/guide/food/desert/Golden_bread.jpg',
  'dessertRestaurantName' : 'الخبز الذهبي',
  'dessertRestaurantAddress' : 'حيدر باشا، حلوان الشرقية، قسم حلوان، محافظة القاهرة',
  'Phone' : '01150268322',
},
{
  'dessertRestaurantImage' : 'assets/guide/food/desert/Bedamore.jpg',
  'dessertRestaurantName' : 'بيدامور',
  'dessertRestaurantAddress' : '٥٦ ش عبد الرحمن،، 57 عبد الرحمن، قسم حلوان، محافظة القاهرة11421',
  'Phone' : '02 25547310',
},
];


List<Map<String, dynamic>> Pies_PizzaRestaurantData =[
{
  'pies_PizzaRestaurantImage' : 'assets/guide/food/Pies_Pizza/ageen.jpg',
  'pies_PizzaRestaurantName' : 'عجين',
  'pies_PizzaRestaurantAddress' : 'شارع حيدر تقاطع اسماعيل كامل عمارات المروة حلوان, حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01016344555',
},
{
  'pies_PizzaRestaurantImage' : 'assets/guide/food/Pies_Pizza/tres_bon.jpg',
  'pies_PizzaRestaurantName' : 'تري بون',
  'pies_PizzaRestaurantAddress' : '١٤ محمد سيد أحمد، قسم حلوان، محافظة القاهرة 11918',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01123311709',
},
{
  'pies_PizzaRestaurantImage' : 'assets/guide/food/Pies_Pizza/el_shek_wael.jpg',
  'pies_PizzaRestaurantName' : 'الشيخ وائل',
  'pies_PizzaRestaurantAddress' : 'شارع محمود خاطر، قسم حلوان، محافظة القاهرة 11722',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01010032012',
},
{
  'pies_PizzaRestaurantImage' : 'assets/guide/food/Pies_Pizza/elhoria.jpg',
  'pies_PizzaRestaurantName' : 'الحريه',
  'pies_PizzaRestaurantAddress' : 'المساكن الإقتصادية، قسم حلوان، محافظة القاهرة4034202',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01127606829',
},
];


List<Map<String, dynamic>> popular_FoodsRestaurantData =[
{
  'popular_FoodsName' : 'koushari'.tr,
  'popular_FoodsImage' : 'assets/guide/food/popular_Foods/Koushari.jpeg',
  'screen' : KoushariScreen(),
},
{
  'popular_FoodsName' : 'liver'.tr,
  'popular_FoodsImage' : 'assets/guide/food/popular_Foods/Liver.jpeg',
  'screen' : LiverScreen(),
},
{
  'popular_FoodsName' : 'fool'.tr,
  'popular_FoodsImage' : 'assets/guide/food/popular_Foods/fool.jpeg',
  'screen' : FollAndTamiyaScreen(),
},
];


List<Map<String, dynamic>> KoushariRestaurantData =[
{
  'koushariRestaurantImage' : 'assets/guide/food/popular_Foods/Koushari_Sections/el_gobashe.jpg',
  'koushariRestaurantName' : 'الغباشي',
  'koushariRestaurantAddress' : '٣٣ شارع حيدر تقاطع، مصطفى فهمي، محافظة القاهرة 11426',
  'workTimes' : 'يغلق ١٢ ص',
  'Phone' : '0219860',
},
{
  'koushariRestaurantImage' : 'assets/guide/food/popular_Foods/Koushari_Sections/el_moktar.jpg',
  'koushariRestaurantName' : 'المختار',
  'koushariRestaurantAddress' : 'محمد سيد أحمد، قسم حلوان، محافظة القاهرة 4035211',
  'workTimes' : 'يغلق ١٢ ص',
  'Phone' : '01022201552',
},
{
  'koushariRestaurantImage' : 'assets/guide/food/popular_Foods/Koushari_Sections/abo_rgel.jpg',
  'koushariRestaurantName' : 'ابو رجيله',
  'koushariRestaurantAddress' : 'محمد مصطفى المراغي، قسم حلوان، محافظة القاهرة 4035211',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01016647070',
},
{
  'koushariRestaurantImage' : 'assets/guide/food/popular_Foods/Koushari_Sections/fouda.jpg',
  'koushariRestaurantName' : 'فوده',
  'koushariRestaurantAddress' : 'محمد مصطفى المراغي، حلوان الشرقية، قسم حلوان، محافظة القاهرة 4036431',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01023111169',
},
];


List<Map<String, dynamic>> LiverRestaurantData =[
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/kibdakia.JPG',
  'liverRestaurantName' : 'كبداكيا',
  'liverRestaurantAddress' : '25 أحمد راغب باشا، ،، قسم حلوان، محافظة القاهرة 11722',
  'workTimes' : ':٠٠: ٢ ص',
  'Phone' : '010310985300',
},
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/abo_assem.jpg',
  'liverRestaurantName' : 'ابو عاصم',
  'liverRestaurantAddress' : 'محلوان الشرقية، قسم حلوان، محافظة القاهرة 4036432',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '02 23747953',
},
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/ELMAHDII.jpg',
  'liverRestaurantName' : 'كبدة وسجق المهدي',
  'liverRestaurantAddress' : 'العزبة القبلية، حلوان القبلية، قسم حلوان، محافظة القاهرة 4027160',
  'workTimes' : '',
  'Phone' : '01148757796',
},
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/brns.jpg',
  'liverRestaurantName' : 'كبدة البرنس',
  'liverRestaurantAddress' : 'شارع خالد بن الوليد، حدائق، منشأة ناصر، قسم حلوان، محافظة القاهرة،، المعصرة',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01100094373',
},
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/mlk.jpg',
  'liverRestaurantName' : 'ملك الكبدة والحواوشي',
  'liverRestaurantAddress' : 'الدكتور زكي حواس، حلوان القبلية، قسم حلوان، محافظة القاهرة 4036532',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01155190973',
},
{
  'liverRestaurantImage' : 'assets/guide/food/popular_Foods/Liver_Sections/zico.jpg',
  'liverRestaurantName' : 'Ziko',
  'liverRestaurantAddress' : 'بجوار ماكدونالدز، 42 أ شريف، قسم حلوان، محافظة القاهرة 4035045',
  'workTimes' : 'يفتح في الساعة ١١ ص',
  'Phone' : '01006168000',
},
];


List<Map<String, dynamic>> follAndTamiyaRestaurantData =[
{
  'follAndTamiyaRestaurantImage' : 'assets/guide/food/popular_Foods/foll_and_Tamiya_Sections/alwahaty.jpg',
  'follAndTamiyaRestaurantName' : 'الواحاتي',
  'follAndTamiyaRestaurantAddress' : 'جمال عبد الناصر، منشأة ناصر، قسم حلوان، محافظة القاهرة،، المعصرة',
  'workTimes' : '',
  'Phone' : '01065590518',
},
{
  'follAndTamiyaRestaurantImage' : 'assets/guide/food/popular_Foods/foll_and_Tamiya_Sections/elshe5.jpg',
  'follAndTamiyaRestaurantName' : 'الشيخ',
  'follAndTamiyaRestaurantAddress' : 'الاصلاح القديم، حلوان البلد، قسم حلوان، محافظة القاهرة،، قسم حلوان',
  'workTimes' : '',
  'Phone' : '01273657895',
},
{
  'follAndTamiyaRestaurantImage' : 'assets/guide/food/popular_Foods/foll_and_Tamiya_Sections/nema.jpg',
  'follAndTamiyaRestaurantName' : 'نعمه',
  'follAndTamiyaRestaurantAddress' : 'الدواجن، منشأة ناصر، قسم حلوان،، المعصرة، محافظة القاهرة',
  'workTimes' : '',
  'Phone' : '01027077054',
},
{
  'follAndTamiyaRestaurantImage' : 'assets/guide/food/popular_Foods/foll_and_Tamiya_Sections/elmostafa.jpg',
  'follAndTamiyaRestaurantName' : 'المصطفي',
  'follAndTamiyaRestaurantAddress' : 'حلوان الشرقية، قسم حلوان، محافظة القاهرة 4036450',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01094013892',
},
{
  'follAndTamiyaRestaurantImage' : 'assets/guide/food/popular_Foods/foll_and_Tamiya_Sections/am_bashandy.jpg',
  'follAndTamiyaRestaurantName' : 'عم بشندي',
  'follAndTamiyaRestaurantAddress' : '٣٦شارع شريف علي، أحمد انسي، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0228181028',
},
];


List<Map<String, dynamic>> coffee_ShopsRestaurantData =[
{
  'coffee_ShopsRestaurantImage' : 'assets/guide/food/foll_and_Tamiya/alwahaty.jpg',
  'coffee_ShopsRestaurantName' : 'بن مولانا',
  'coffee_ShopsRestaurantAddress' : 'مدينة 15 مايو مجاورة 6 الميدان',
  'workTimes' : '',
  'Phone' : '01110647009',
},
{
  'coffee_ShopsRestaurantImage' : 'assets/guide/food/foll_and_Tamiya/elshe5.jpg',
  'coffee_ShopsRestaurantName' : 'لافيلا',
  'coffee_ShopsRestaurantAddress' : 'رستم, لاظوغلي، محافظة القاهرة 11731',
  'workTimes' : 'يغلق ١ ص',
  'Phone' : '01000710452',
},
{
  'coffee_ShopsRestaurantImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'coffee_ShopsRestaurantName' : 'نعمه',
  'coffee_ShopsRestaurantAddress' : 'الدواجن، منشأة ناصر، قسم حلوان،، المعصرة، محافظة القاهرة',
  'workTimes' : '',
  'Phone' : '01027077054',
},
{
  'coffee_ShopsRestaurantImage' : 'assets/guide/food/foll_and_Tamiya/elmostafa.jpg',
  'coffee_ShopsRestaurantName' : 'المصطفي',
  'coffee_ShopsRestaurantAddress' : 'حلوان الشرقية، قسم حلوان، محافظة القاهرة 4036450',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01094013892',
},
{
  'coffee_ShopsRestaurantImage' : 'assets/guide/food/foll_and_Tamiya/am_bashandy.jpg',
  'coffee_ShopsRestaurantName' : 'عم بشندي',
  'coffee_ShopsRestaurantAddress' : '٣٦شارع شريف علي، أحمد انسي، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0228181028',
},
];


List<Map<String, dynamic>> HealthSections =[
{
  'HealthName' : 'clinics'.tr,
  'HealthImage' : 'assets/guide/health/clinic/clinic.jpg',
  'screen' : ClinicScreen(),
},
{
  'HealthName' : 'pharmacies'.tr,
  'HealthImage' : 'assets/guide/health/pharmacies/pharmacie.jpg',
  'screen' : PharmaciesScreen(),
},
{
  'HealthName' : 'laboratories_x-rays'.tr,
  'HealthImage' : 'assets/guide/health/Laboratories_x-rays/lab.jpg',
  'screen' : LapScreen(),
},
{
  'HealthName' : 'hospitals'.tr,
  'HealthImage' : 'assets/guide/health/hospital/hospital.jpg',
  'screen' : HospitalsScreen(),
},
];


List<Map<String, dynamic>> ClinicsSections =[
{
  'ClinicsSectionsName' : 'اسنان',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/teeth/teeth.jpg',
  'screen' : DentistScreen(),
},
{
  'ClinicsSectionsName' : 'تجميل',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/beauty/beauty.jpg',
  'screen' : BeautyScreen(),
},
{
  'ClinicsSectionsName' : 'نساء وتوليد',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/women/women.jpg',
  'screen' : WomenScreen(),
},
{
  'ClinicsSectionsName' : 'جراحة',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/graha/graha.jpg',
  'screen' : GrahaScreen(),
},
{
  'ClinicsSectionsName' : 'باطنة وغدد',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/batna/batna.jpg',
  'screen' : BatnaScreen(),
},
{
  'ClinicsSectionsName' : 'اطفال',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/child/child.jpg',
  'screen' : ChildScreen(),
},
{
  'ClinicsSectionsName' : 'أنف واذن وحنجره',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/anf/anf.jpg',
  'screen' : AnfScreen(),
},
{
  'ClinicsSectionsName' : 'جلدية و تناسلية و ذكورة',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/skin/skin.jpg',
  'screen' : SkinScreen(),
},
{
  'ClinicsSectionsName' : 'رمد',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/eye/eye.jpg',
  'screen' : EyeScreen(),
},
{
  'ClinicsSectionsName' : 'مخ واعصاب',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/mokh/mokh.jpg',
  'screen' : MokhScreen(),
},
{
  'ClinicsSectionsName' : 'قلب واوعية دموية',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/heart/heart.jpg',
  'screen' : HeartScreen(),
},
{
  'ClinicsSectionsName' : 'عظام',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/bone/bone.png',
  'screen' : BonesScreen(),
},
{
  'ClinicsSectionsName' : 'الامراض الصدرية',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/chest/chest.png',
  'screen' : ChestScreen(),
},
{
  'ClinicsSectionsName' : 'الطب النفسي',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/psychiatrist/psychiatrist.png',
  'screen' : PsychiatryScreen(),
},
{
  'ClinicsSectionsName' : 'العلاج الطبيعي',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/physicalـtherapy/physicalـtherapy.png',
  'screen' : NaturalTherapyScreen(),
},
{
  'ClinicsSectionsName' : 'كلى ومسالك بولية',
  'ClinicsSectionsImage' : 'assets/guide/health/clinic/Kidneys/Kidneys.png',
  'screen' : KidneysScreen(),
},
];


List<Map<String, dynamic>> DentistData =[
{
  'dentistImage' : 'assets/guide/health/clinic/teeth/04.png',
  'dentistName' : 'د/ أحمد عصمت الجابرى',
  'dentistDescription' : 'أخصائي طب و جراحه الفم و تجميل الاسنان',
  'dentistAddress' : 'العربى للتكييفات, ٥٥ شارع راغب تقاطع شارع شريف بجوار ماكدونالدز',
  'Phone' : '01101094482',
},
{
  'dentistImage' : 'assets/guide/health/clinic/teeth/02.png',
  'dentistName' : 'keep smiling',
  'dentistDescription' : 'استشاريون و أخصائيون في جميع المجالات',
  'dentistAddress' : 'لطيف باشا، حلوان الشرقية، قسم حلوان',
  'Phone' : '01158236052',
},
{
  'dentistImage' : 'assets/guide/health/clinic/teeth/01.png',
  'dentistName' : 'د.نور الاسلام',
  'dentistDescription' : 'تهتم العيادة بكل ما يخص تجميل الاسنان',
  'dentistAddress' : 'حلوان الشرقية، قسم حلوان',
  'Phone' : '01147493951',
},
{
  'dentistImage' : 'assets/guide/health/clinic/teeth/03.png',
  'dentistName' : 'MiraCare Dental clinic',
  'dentistDescription' : 'أخصائي طب و جراحه الفم والاسنان بمستشفي لقصر العيني',
  'dentistAddress' : 'شارع شريف، قسم حلوان',
  'Phone' : '01551963964',
},
{
  'dentistImage' : 'assets/guide/health/clinic/teeth/05.png',
  'dentistName' : 'د/ عمر جعفر',
  'dentistDescription' : 'أخصائي جراحه الفم و الاسنان',
  'dentistAddress' : 'شارع أطلس حلوان الشرقية، قسم حلوان',
  'Phone' : '01159354449',
},
];


List<Map<String, dynamic>> BeautyData =[
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/5.png',
  'beautyName' : 'الدكتور عبد الله شهاب الدين',
  'beautyDescription' : 'جراح تجميل',
  'beautyAddress' : 'شارع مصطفى المراغي، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '',
},
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/6.png',
  'beautyName' : 'عيادات رونق',
  'beautyDescription' : 'للجلدية والتجميل',
  'beautyAddress' : 'ش خالد بن الوليد، منشأة ناصر',
  'workTimes' : 'يغلق ١٠ م',
  'Phone' : '01014197008',
},
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/4.png',
  'beautyName' : 'دكتورة أميرة عيد',
  'beautyDescription' : 'طبيب أمراض جلدية',
  'beautyAddress' : '40 شريف، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٣ م',
  'Phone' : '01118204222',
},
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/3.png',
  'beautyName' : 'Queen Secret Clinic',
  'beautyDescription' : 'خدمة إزالة الشعر الزائد بالليزر',
  'beautyAddress' : '٤٦ ش الشريف مع تقاطع ش منصور خلف مترو حلوان',
  'workTimes' : 'يغلق ٦ م',
  'Phone' : '01142502589',
},
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/2.png',
  'beautyName' : 'مركز مسك',
  'beautyDescription' : 'عيادة للعناية بالبشرة',
  'beautyAddress' : '44 منصور، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'Phone' : '01224920200',
},
{
  'beautyImage' : 'assets/guide/health/clinic/beauty/1.png',
  'beautyName' : 'د.مها محمد نجيب',
  'beautyDescription' : 'طبيب أمراض جلدية و تجميل',
  'beautyAddress' : '٣٩ ش مصطفى فهمى, أحمد انسي',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'Phone' : '01148864889',
},
];


List<Map<String, dynamic>> WomenData =[
{
  'womenImage' : 'assets/guide/health/clinic/women/osma-fayd.png',
  'womenName' : 'دكتور أسامة فايد',
  'womenDescription' : '',
  'womenAddress' : 'أول تتونجي ناحية المفارق أعلى آوت فيت، حدائق حلوان',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01004981465',
},
{
  'womenImage' : 'assets/guide/health/clinic/women/motaz-elhelw.png',
  'womenName' : 'دكتور معتز الحلو',
  'womenDescription' : 'إستشاري أمراض النساء والتوليد وعلاج العقم',
  'womenAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : ' يفتح في الساعة ٦ م',
  'Phone' : '01030320302',
},
{
  'womenImage' : 'assets/guide/health/clinic/women/ahmed-abdelalem.png',
  'womenName' : 'دكتور محمد أحمد عبد العليم',
  'womenDescription' : 'إستشاري أمراض النساء والتوليد وعلاج العقم',
  'womenAddress' : 'اطلس، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0110740911',
},
{
  'womenImage' : 'assets/guide/health/clinic/women/aber.png',
  'womenName' : 'الدكتورة عبير محمد عبد الكريم',
  'womenDescription' : 'إستشاري أمراض النساء والتوليد',
  'womenAddress' : 'برج التطبقيين، 16 شارع عبدالرحمن تقاطع ش، مصطفى صفوت ',
  'workTimes' : 'يغلق ١ م',
  'Phone' : '0227072077',
},
{
  'womenImage' : 'assets/guide/health/clinic/women/el_aksa.png',
  'womenName' : 'مركز الاقصى للنساء والتوليد',
  'womenDescription' : '',
  'womenAddress' : 'اعلي سنتر شاهين, ش رايل',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0225585998',
},
{
  'womenImage' : 'assets/guide/health/clinic/women/noua.png',
  'womenName' : 'عيادة د نورا محمود شهاب للنساء والتوليد',
  'womenDescription' : 'ماجيستير امراض النساء و التوليد',
  'womenAddress' : '35 شارع راغب تقاطع, محمد سيد أحمد',
  'workTimes' : 'يفتح في الساعة ٨ م',
  'Phone' : '01007058875',
},
];


List<Map<String, dynamic>> GrahaData =[
{
  'grahaImage' : 'assets/guide/health/clinic/graha/esmat_el_gabre.png',
  'grahaName' : 'دكتور عصمت الجابرى',
  'grahaDescription' : 'المركز الطبى التخصصى للجراحة',
  'grahaAddress' : 'حلوان القبلية، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '0227666594',
},
{
  'grahaImage' : 'assets/guide/health/clinic/graha/magdi-saad.png',
  'grahaName' : 'مركز دكتور مجدي سعد للجراحة',
  'grahaDescription' : '',
  'grahaAddress' : 'حيدر، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعه',
  'Phone' : '0227076192',
},
{
  'grahaImage' : 'assets/guide/health/clinic/graha/mostfa_mahmoud.png',
  'grahaName' : 'دكتور مصطفي محمود',
  'grahaDescription' : '',
  'grahaAddress' : '38 السلام، منشأة ناصر',
  'workTimes' : '',
  'Phone' : '01061205129',
},
{
  'grahaImage' : 'assets/guide/health/clinic/graha/maged.png',
  'grahaName' : 'مركز الدكتور ماجد فريد ناشد لجراحة العظام',
  'grahaDescription' : '',
  'grahaAddress' : '٣٨ شارع، أحمد راغب باشا، محافظة القاهرة',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01005100239',
},
{
  'grahaImage' : 'assets/guide/health/clinic/graha/mahmod-elmsare.png',
  'grahaName' : 'د / محمود المصرى',
  'grahaDescription' : '',
  'grahaAddress' : 'منشأة ناصر',
  'workTimes' : '',
  'Phone' : '01122211301',
},
{
  'grahaImage' : 'assets/guide/food/foll_and_Tamiya/am_bashandy.jpg',
  'grahaName' : 'د/ أمير محمود معروف',
  'grahaDescription' : '',
  'grahaAddress' : 'شارع محمد سيد أحمد،حلوان',
  'workTimes' : 'يفتح ٥ م يوم الأربعاء',
  'Phone' : '01060910478',
},
{
  'grahaImage' : 'assets/guide/health/clinic/graha/mahmod-radwan.png',
  'grahaName' : 'مستشفى د.محمود أحمد رضوان',
  'grahaDescription' : '',
  'grahaAddress' : 'شارع أحمد راغب باشا',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0228182694',
},
];


List<Map<String, dynamic>> BatnaData =[
{
  'batnaImage' : 'assets/guide/health/clinic/batna/ahmed-kandel.png',
  'batnaName' : 'د. أحمد قنديل',
  'batnaDescription' : '',
  'batnaAddress' : '٢٠شارع رياض حلوان امام محطة حلوان',
  'workTimes' : 'يغلق ٩ م',
  'Phone' : '01122330481',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/hesham.png',
  'batnaName' : 'عيادة د/ هشام محمد عثمان',
  'batnaDescription' : '',
  'batnaAddress' : 'عبد الله باشا، قسم حلوان',
  'workTimes' : 'يغلق ١٠ م',
  'Phone' : '01015637788',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/ahmed_abo_shady.png',
  'batnaName' : 'دكتور احمد ابو شادى',
  'batnaDescription' : '',
  'batnaAddress' : 'شارع الحموي، حدائق حلوان',
  'workTimes' : ' يفتح في الساعة ٧ م',
  'Phone' : '01223716198',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/yossf.png',
  'batnaName' : 'الدكتور يوسف صلاح سويفي',
  'batnaDescription' : '',
  'batnaAddress' : 'رياض باشا ، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٥:٤٢ م',
  'Phone' : '01115236118',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/esmat.png',
  'batnaName' : 'دكتور عصمت عبد المجيد',
  'batnaDescription' : '',
  'batnaAddress' : '٢١، شارع يوسف الجندي، منشأة ناصر، حدائق حلوان',
  'workTimes' : 'يفتح ٢ م يوم السبت',
  'Phone' : '01010816487',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/amer_rafet.png',
  'batnaName' : 'دكتور عمرو رأفت',
  'batnaDescription' : '',
  'batnaAddress' : 'حيدر باشا، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '0155382694',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/harbi.png',
  'batnaName' : 'د. حربى رمزى سالم',
  'batnaDescription' : '',
  'batnaAddress' : '39 أحمد راغب باشا خير زمان حلوان',
  'workTimes' : ' يفتح ١٢ م يوم السبت',
  'Phone' : '01211125101',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/mahr.png',
  'batnaName' : 'ماهر ميلاد',
  'batnaDescription' : '',
  'batnaAddress' : '34 ش منصور، قسم حلوان، محافظة القاهرة',
  'workTimes' : '',
  'Phone' : '',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور تامر عبد الرحمن',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : '44 منصور، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٣ م',
  'Phone' : '01114475668',
},
{
  'batnaImage' : 'assets/guide/health/clinic/batna/shaymaa.png',
  'batnaName' : 'دكتورة شيماء أحمد سلمان',
  'batnaDescription' : '',
  'batnaAddress' : 'أحمد راغب باشا، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٨ م',
  'Phone' : '01147227498',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور محمد بسطاوى',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : '94 القصر العيني، حلوان الشرقية',
  'workTimes' : '',
  'Phone' : '01001509604',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور أحمد حسن رشاد',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : '٣٦ شارع شريف تقاطع احمد انسي',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01007720665',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور محمد حسن حمدتو',
  'batnaDescription' : 'استشاري أمراض الكبد والجهاز الهضمي',
  'batnaAddress' : 'محمد مصطفى المراغي، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '0227839357',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور محمد حسانى',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'شارع أحمد انسي، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01155606469',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور سعيد درويش',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'شارع ذكي، تقاطع جعفر',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '0106612788',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور أحمد شوقى',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'شارع شريف،حلوان',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01210504491',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور عمرو رأفت',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'حيدر باشا، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '0155382694',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'محمد منصور المهدى',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'معمل هيبتا، شارع حمودة، حدائق حلوان، ٣٠ شارع شريف ناصية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01015515821',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتورة مروة موسى أبوعريضة',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'محمد مصطفى المراغي، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٣ م',
  'Phone' : '01155244191',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور محمد عبد الكريم',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'حسن حسني، الحدائق',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01002795594',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور عصمت عبد المجيد',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : '٢١، شارع يوسف الجندي،حدائق حلوان',
  'workTimes' : 'يغلق ٨ م',
  'Phone' : '01010816487',
},
{
  'batnaImage' : 'assets/guide/food/Koushari/fouda.jpg',
  'batnaName' : 'دكتور محمد شرف',
  'batnaDescription' : 'جهاز هضمي',
  'batnaAddress' : 'منصور، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٤ م',
  'Phone' : '01033132261',
},
];


List<Map<String, dynamic>> ChildData =[
{
  'childImage' : 'assets/guide/health/clinic/child/ashraf.png',
  'childName' : 'دكتور أشرف سيد كامل',
  'childDescription' : '',
  'childAddress' : '٣٣ شارع أحمد أنسي تقاطع شريف - الدور الأول',
  'workTimes' : '',
  'Phone' : '0228180433',
},
{
  'childImage' : 'assets/guide/health/clinic/child/ali.png',
  'childName' : 'دكتور على عاشور',
  'childDescription' : 'لأمراض الأطفال',
  'childAddress' : 'شارع راغب، أحمد باشا',
  'workTimes' : 'يفتح في الساعة ٢ م',
  'Phone' : '01091396751',
},
{
  'childImage' : 'assets/guide/health/clinic/child/elnada.png',
  'childName' : 'عيادة الندى',
  'childDescription' : 'لطب الاطفال وحديثى الولادة',
  'childAddress' : '20 شارع توتنجي، منشأة ناصر، حدائق حلوان',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01118812746',
},
{
  'childImage' : 'assets/guide/health/clinic/child/sara_hosne.png',
  'childName' : 'دكتورة ساره حسني',
  'childDescription' : '',
  'childAddress' : 'تبارك، ابراج الدهب مول -المحطة - الدور ٢ - اعلي مستشفى',
  'workTimes' : '',
  'Phone' : '0225983900',
},
{
  'childImage' : 'assets/guide/health/clinic/child/mohamed_ahmed.png',
  'childName' : 'عيادة د / محمد أحمد سليم',
  'childDescription' : '',
  'childAddress' : 'الدور الثالث، شارع أحمد راغب باشا',
  'workTimes' : '',
  'Phone' : '01277122071',
},
];


List<Map<String, dynamic>> AnfData =[
{
  'anfImage' : 'assets/guide/health/clinic/anf/ramadan.png',
  'anfName' : 'دكتور رمضان سليمان',
  'anfDescription' : '',
  'anfAddress' : 'شريف، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01100077119',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/abedelrahman.png',
  'anfName' : 'دكتور عبدالرحمن يونس على',
  'anfDescription' : 'أستاذ م جراحات الأنف والأذن وجراحات الرأس والرقبه',
  'anfAddress' : 'حلوان: 42 شارع المراغي عمارات',
  'workTimes' : 'يفتح ٢ م يوم الثلاثاء',
  'Phone' : '01000026148',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/tamer.png',
  'anfName' : 'دكتور تامر عبد المنعم عزام',
  'anfDescription' : '',
  'anfAddress' : 'شارع أحمد راغب باشا،, قسم حلوان',
  'workTimes' : '',
  'Phone' : '01020333786',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/esmael_mohamed.png',
  'anfName' : 'دكتور إسماعيل محمد إسماعيل',
  'anfDescription' : '',
  'anfAddress' : '38 ش راغب باشا، قسم حلوان',
  'workTimes' : '',
  'Phone' : '0229800032',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/mohsen.png',
  'anfName' : 'دكتور محسن أحمد رياض',
  'anfDescription' : '',
  'anfAddress' : 'شارع أحمد راغب باشا، قسم حلوان',
  'workTimes' : '',
  'Phone' : '0111358547',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/atef.png',
  'anfName' : 'دكتور/عاطف مبروك',
  'anfDescription' : '',
  'anfAddress' : 'شارع أحمد راغب باشا،حلوان،قسم',
  'workTimes' : 'يفتح في الساعة ٨ م',
  'Phone' : '01110279924',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/ahmed_elsalmawy.png',
  'anfName' : 'دكتور أحمد السلماوى',
  'anfDescription' : '',
  'anfAddress' : 'شارع عبد الرحمن',
  'workTimes' : 'يفتح ٤ م يوم الأربعاء',
  'Phone' : '01115142887',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/samy_mohamed.png',
  'anfName' : 'دكتور سامى محمد سند',
  'anfDescription' : '',
  'anfAddress' : 'Helwan Ash Sharqeyah, Qesm Helwan',
  'workTimes' : '',
  'Phone' : '01289181085',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/moner.png',
  'anfName' : 'دكتور منير رزق الله ميلاد',
  'anfDescription' : '',
  'anfAddress' : 'Al Maasarah Al Balad, Qesm Helwan',
  'workTimes' : 'يفتح ٧ م يوم الاثنين',
  'Phone' : '',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/saheb.png',
  'anfName' : 'د. صهيب عبدالسلام',
  'anfDescription' : 'للأنف والأذن والحنجرة بحدائق حلوان',
  'anfAddress' : 'بجوار صيدليه د مروة أمام فوري, المفارق, خالد إبن الوليد',
  'workTimes' : '',
  'Phone' : '01092167911',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/mrkos.png',
  'anfName' : 'د. مرقص دياب مرقص',
  'anfDescription' : '',
  'anfAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : '',
  'Phone' : '0225567371',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/botros.png',
  'anfName' : 'دكتور بطرس شفيق',
  'anfDescription' : '',
  'anfAddress' : '42 أحمد شريف، قسم حلوان',
  'workTimes' : '',
  'Phone' : '01017541455',
},
{
  'anfImage' : 'assets/guide/health/clinic/anf/waled.png',
  'anfName' : 'عيادة دكتور وليد حسنى',
  'anfDescription' : '',
  'anfAddress' : 'شارع راغب تقاطع شارع محمد سيد احمد عمارة بنك الاسكندرية',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01224817858',
},
];


List<Map<String, dynamic>> SkinData =[
{
  'skinImage' : 'assets/guide/health/clinic/skin/awad.png',
  'skinName' : 'دكتور عوض الله مكى',
  'skinDescription' : '',
  'skinAddress' : 'محمد مصطفى المراغي',
  'workTimes' : '',
  'Phone' : '01001456227',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/hane.png',
  'skinName' : 'دكتور هانى عبد العال الزيات',
  'skinDescription' : '',
  'skinAddress' : '46 منصور، قسم حلوان',
  'workTimes' : '',
  'Phone' : '01024700740',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/eslam_mohamed.png',
  'skinName' : 'د. اسلام محمد ابو الخير',
  'skinDescription' : '',
  'skinAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01001222264',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/mohamed_abd_elazez.png',
  'skinName' : 'عيادة د. محمد عبد العزيز',
  'skinDescription' : '',
  'skinAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٢:٠١ م',
  'Phone' : '0227839336',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/sara.png',
  'skinName' : 'دكتور سارة عبد السلام',
  'skinDescription' : '',
  'skinAddress' : 'محمد مصطفى المراغي، قسم حلوان',
  'workTimes' : '',
  'Phone' : '01115726338',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/hoda.png',
  'skinName' : 'د. هدى اسماعيل رسلان',
  'skinDescription' : '',
  'skinAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : '',
  'Phone' : '0227072268',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/alefa.png',
  'skinName' : 'د. اليفة انيس معوض',
  'skinDescription' : '',
  'skinAddress' : '30 ش محمد سيد أحمد',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01119155226',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/amer.png',
  'skinName' : 'دكتور سمير صبرى الألفى',
  'skinDescription' : '',
  'skinAddress' : 'شارع محمد سيد أحمد',
  'workTimes' : 'يفتح في الساعة ٨ م',
  'Phone' : '01279095334',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/ahmed_faouze.png',
  'skinName' : 'دكتور أحمد فوزى',
  'skinDescription' : '',
  'skinAddress' : 'فوق فودافون، 25 شارع المراغى بجوار العصر الحديث سنتر',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01122206474',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/naem.png',
  'skinName' : 'دكتور نعيم جورج',
  'skinDescription' : '',
  'skinAddress' : 'قسم حلوان، محافظة القاهرة',
  'workTimes' : '',
  'Phone' : '01027711555',
},
{
  'skinImage' : 'assets/guide/health/clinic/skin/eshrak.png',
  'skinName' : 'مركز اشراق لاطفال الانابيب',
  'skinDescription' : '',
  'skinAddress' : '32 Ahmed Onsy St',
  'workTimes' : '',
  'Phone' : '0229732646',
},
];


List<Map<String, dynamic>> EyeData =[
{
  'eyeImage' : 'assets/guide/health/clinic/eye/mohamed_rabea.png',
  'eyeName' : 'د.محمد ربيع',
  'eyeDescription' : '',
  'eyeAddress' : '٢٣، محمد مصطفى المراغي',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01101004251',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/hasen_helme.png',
  'eyeName' : 'دكتور حسن حلمي صبره',
  'eyeDescription' : '',
  'eyeAddress' : 'شارع محمد سيد أحمد،حلوان',
  'workTimes' : 'يغلق ٧ م',
  'Phone' : '01228144701',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/eonan.png',
  'eyeName' : 'دكتور/ يونان عياد',
  'eyeDescription' : '',
  'eyeAddress' : 'قسم حلوان، محافظة القاهرة',
  'workTimes' : '',
  'Phone' : '01005183942',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/mohamed_abd_elrzak.png',
  'eyeName' : 'دكتور محمد عبد الرازق حيدر',
  'eyeDescription' : 'مركز لايت للعيون',
  'eyeAddress' : '32, شارع ذكي',
  'workTimes' : '',
  'Phone' : '01227729228',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/tarek-araf.png',
  'eyeName' : 'دكتور طارق شرف',
  'eyeDescription' : '',
  'eyeAddress' : '٢٠ شارع توتنجي، حدائق حلوان',
  'workTimes' : 'يفتح في الساعة ٢ م',
  'Phone' : '0223696191',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/ahmed_elfar.png',
  'eyeName' : 'عيادة د أحمد الفار للعيون',
  'eyeDescription' : '',
  'eyeAddress' : 'شريف، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01122300996',
},
{
  'eyeImage' : 'assets/guide/health/clinic/eye/ahmed_nady.png',
  'eyeName' : 'عيادة دكتور أحمد نادي',
  'eyeDescription' : 'أخصائي طب وجراحة العيون',
  'eyeAddress' : 'إسماعيل كامل، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01200169376',
},
];


List<Map<String, dynamic>> MokhData =[
{
  'mokhImage' : 'assets/guide/health/clinic/mokh/ahmed_mohamed.png',
  'mokhName' : 'دكتور أحمد محمد شلبي',
  'mokhDescription' : '',
  'mokhAddress' : 'الدور الأول - شارع محمد سيد أحمد،حلوان',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01111699596',
},
{
  'mokhImage' : 'assets/guide/health/clinic/mokh/salah_fathe.png',
  'mokhName' : 'مستشفى دكتور/ صلاح فتحى',
  'mokhDescription' : '',
  'mokhAddress' : 'شارع منصور، حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0227078656',
},
{
  'mokhImage' : 'assets/guide/health/clinic/mokh/ahmed_el_gaty.png',
  'mokhName' : 'دكتور أحمد الغيطي',
  'mokhDescription' : 'استشاري جراحة المخ والأعصاب والعمود الفقري والقسطرة المخية التداخلية وجراحات الصرع',
  'mokhAddress' : 'محمد مصطفى المراغي، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01101001844',
},
{
  'mokhImage' : 'assets/guide/health/clinic/mokh/amer_sleman.png',
  'mokhName' : 'دكتور عمرو سليمان',
  'mokhDescription' : 'طبيب جهاز عصبي',
  'mokhAddress' : '٣٢ المراغي - الدور الرابع - امام مول العصر الحديث',
  'workTimes' : '',
  'Phone' : '0225983900',
},
{
  'mokhImage' : 'assets/guide/health/clinic/mokh/shref_madboly.png',
  'mokhName' : 'دكتور شريف مدبولى',
  'mokhDescription' : '',
  'mokhAddress' : 'دكتور شريف مدبولى',
  'workTimes' : 'يفتح في الساعة ٢ م',
  'Phone' : '01006691012',
},
];


List<Map<String, dynamic>> HeartData =[
{
  'heartImage' : 'assets/guide/health/clinic/heart/ahmed_el_gende.png',
  'heartName' : 'دكتور أحمد الجندى',
  'heartDescription' : '',
  'heartAddress' : 'شارع عبداللة باشا،حلوان',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01022493484',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/ahmed_nageb.png',
  'heartName' : 'دكتور أحمد نجيب مصطفى',
  'heartDescription' : '',
  'heartAddress' : 'حيدر، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٤:٣٠ م',
  'Phone' : '01116490350',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/mohamed_saed.png',
  'heartName' : 'دكتور محمد سعد الجمال',
  'heartDescription' : 'مركز قلب حلوان',
  'heartAddress' : 'عمر بن عبد العزيز، المساكن الإقتصادية',
  'workTimes' : '',
  'Phone' : '01126700960',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/ahmed_gafer.png',
  'heartName' : 'دكتور أحمد جعفر',
  'heartDescription' : '',
  'heartAddress' : 'محمد مصطفى المراغي',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01002278743',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/mahmoud_radwan.png',
  'heartName' : 'د.محمود رضوان قلب',
  'heartDescription' : '',
  'heartAddress' : 'السكة الحديد، منشأة ناصر',
  'workTimes' : '',
  'Phone' : '01151185838',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/mohamed_fouad.png',
  'heartName' : 'مركز د.محمد فؤاد فهمي',
  'heartDescription' : 'لأمراض القلب و الموجات الصوتيه على القلب',
  'heartAddress' : '37 شارع راغب بجوار خير زمان',
  'workTimes' : 'يغلق ٦ م',
  'Phone' : '01024272187',
},{
  'heartImage' : '',
  'heartName' : 'دكتور محمود زهنى',
  'heartDescription' : '',
  'heartAddress' : 'أحمد راغب باشا',
  'workTimes' : 'يفتح في الساعة ٣ م',
  'Phone' : '01010569580',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/easer_ahmed.png',
  'heartName' : 'د. ياسر احمد عبد الهادى',
  'heartDescription' : '',
  'heartAddress' : '2 mohamed sayed ahmed st',
  'workTimes' : '',
  'Phone' : '0225561196',
},
{
  'heartImage' : 'assets/guide/health/clinic/heart/ahmed_salah.png',
  'heartName' : 'دكتور أحمد صلاح مصطفى',
  'heartDescription' : '',
  'heartAddress' : 'شارع محمد سيد أحمد',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01012430037',
},
];


List<Map<String, dynamic>> BonesData =[
{
  'bonesImage' : 'assets/guide/health/clinic/bone/ehab.png',
  'bonesName' : 'دكتور ايهاب فايق',
  'bonesDescription' : 'لجراحة العظام',
  'bonesAddress' : '٣٩ شارع راغب فوق خير زمان',
  'workTimes' : 'يفتح ٣ م يوم السبت',
  'Phone' : '01065777806',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/baseune.png',
  'bonesName' : 'دكتور زكى بسيونى',
  'bonesDescription' : '',
  'bonesAddress' : 'شارع الامل، حلوان الشرقية',
  'workTimes' : '',
  'Phone' : '01140336565',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/deaa_mohamed.png',
  'bonesName' : 'د. ضياء محمد الفامي',
  'bonesDescription' : 'لجراحة العظام',
  'bonesAddress' : 'شارع محمود خاطر،, قسم حلوان',
  'workTimes' : '',
  'Phone' : '01554372293',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/ahmed_mostafa.png',
  'bonesName' : 'دكتور أحمد مصطفى',
  'bonesDescription' : '',
  'bonesAddress' : 'أحمد انسي، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01019276450',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/el_helal.png',
  'bonesName' : 'د/ محمد هاشم',
  'bonesDescription' : 'مركز الهلال',
  'bonesAddress' : '١٦شارع عبدالرحمن، مصطفى صفوت',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01201123288',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/mahmoud_abdl_baset.png',
  'bonesName' : 'دكتور محمود عبدالباسط',
  'bonesDescription' : '',
  'bonesAddress' : 'حلوان -٤ ش مصطفى صفوت تقاطع، برهان',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01553075251',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/waled_shaban.png',
  'bonesName' : 'د. وليد شعبان مصطفى',
  'bonesDescription' : '',
  'bonesAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : '',
  'Phone' : '0225570516',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/mostfa_shokry.png',
  'bonesName' : 'دكتور مصطفى شكرى',
  'bonesDescription' : '',
  'bonesAddress' : '٤٦ أ شارع اسماعيل كامل',
  'workTimes' : 'يفتح ٤ م يوم الخميس',
  'Phone' : '01032303332',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/mohamed_abdl_raof.png',
  'bonesName' : 'د/ محمد عبد الرؤوف',
  'bonesDescription' : '',
  'bonesAddress' : 'Share3 el west, المساكن الإقتصادية',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01158214200',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/maged_fared.png',
  'bonesName' : 'مركز الدكتور ماجد فريد ناشد',
  'bonesDescription' : 'لجراحة العظام',
  'bonesAddress' : '٣٨ شارع، أحمد راغب باشا',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01005100239',
},
{
  'bonesImage' : 'assets/guide/health/clinic/bone/mohamed_elsbae.png',
  'bonesName' : 'د/محمد السباعي',
  'bonesDescription' : '',
  'bonesAddress' : 'Share3 el west, المساكن الإقتصادية',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '01158214200',
},
];


List<Map<String, dynamic>> ChestData =[
{
  'chestImage' : '',
  'chestName' : 'دكتور حسام محمد مجاهد',
  'chestDescription' : '',
  'chestAddress' : 'حيدر باشا، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01149794095',
},
{
  'chestImage' : '',
  'chestName' : 'دكتور صلاح رضا',
  'chestDescription' : 'استشارى الأمراض الصدرية',
  'chestAddress' : 'أول توتونجي من جمال عبد الناصر -حدائق حلوان',
  'workTimes' : '',
  'Phone' : '01069544333',
},
{
  'chestImage' : '',
  'chestName' : 'دكتور عصام عزام',
  'chestDescription' : '',
  'chestAddress' : '23 حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01115118829',
},
];


List<Map<String, dynamic>> PsychiatryData =[
{
  'psychiatryImage' : '',
  'psychiatryName' : 'دكتور أحمد مرعى',
  'psychiatryDescription' : '',
  'psychiatryAddress' : 'شارع رياض – برج الاسراء – امام أولاد رجب',
  'workTimes' : 'يفتح في الساعة ٦ م',
  'Phone' : '01114060700',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'عيادة بيرسونا للطب النفسي وعلاج الادمان',
  'psychiatryDescription' : '',
  'psychiatryAddress' : '44 محمد مصطفى المراغي، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٣ م',
  'Phone' : '01014193957',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'دكتور محمد صلاح الجندي',
  'psychiatryDescription' : '',
  'psychiatryAddress' : 'محمد مصطفى المراغي',
  'workTimes' : '',
  'Phone' : '01005396843',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'مركز صناع التحدي للتأهيل النفسي',
  'psychiatryDescription' : 'تخاطب -تنمية مهارت',
  'psychiatryAddress' : 'قسم حلوان، محافظة القاهرة',
  'workTimes' : 'يغلق ٨ م',
  'Phone' : '01126098821',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'منى رفاعي',
  'psychiatryDescription' : '',
  'psychiatryAddress' : 'رياض باشا، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٥ م',
  'Phone' : '01152930604',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'مركز ريلاكس للإرشاد النفسي والأسري والسعادة الزوجية',
  'psychiatryDescription' : '',
  'psychiatryAddress' : '91 شارع حموده، منشأة ناصر، حدائق حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'Phone' : '0110163040',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'مركز وجود للطب النفسي وعلاج الادمان',
  'psychiatryDescription' : '',
  'psychiatryAddress' : '46 ش شريف تقاطع منصور برج لؤلؤة الشيخ بجوار بنك الاهلي',
  'workTimes' : 'يغلق ١٠ م',
  'Phone' : '01064391140',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'مركز الحنان للاضطرابات النفسية والسلوكية',
  'psychiatryDescription' : 'اطفال',
  'psychiatryAddress' : 'شارع سلاح المهندسين، قسم حلوان',
  'workTimes' : 'يغلق ٩ م',
  'Phone' : '01100566238',
},
{
  'psychiatryImage' : '',
  'psychiatryName' : 'نهلة احمد عبد الباقي',
  'psychiatryDescription' : 'اخصائية نفسية',
  'psychiatryAddress' : 'محطة مترو حدائق حلوان',
  'workTimes' : 'يغلق ١١ م',
  'Phone' : '01163904467',
},
];


List<Map<String, dynamic>> NaturalTherapyData =[
{
  'naturalTherapyImage' : 'assets/guide/health/clinic/physicalـtherapy/Egyptian-physical-Therapy-center.png',
  'naturalTherapyName' : 'المركز المصري للعلاج الطبيعي',
  'naturalTherapyDescription' : '',
  'naturalTherapyAddress' : 'مصطفى فهمي، حلوان الشرقية',
  'workTimes' : 'يفتح في الساعة ٤ م',
  'Phone' : '01554226476',
},
{
  'naturalTherapyImage' : 'assets/guide/health/clinic/physicalـtherapy/maka.png',
  'naturalTherapyName' : 'د/عبد العزيز ابو قوره \n د/محمود عبد العزيز ابو قوره',
  'naturalTherapyDescription' : 'مركز مكة للعلاج الطبيعى',
  'naturalTherapyAddress' : 'الدكتور مصطفى صفوت',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'Phone' : '0227075212',
},
{
  'naturalTherapyImage' : 'assets/guide/health/clinic/physicalـtherapy/el_salam.png',
  'naturalTherapyName' : 'مركز السلام للعلاج الطبيعى والسمنة',
  'naturalTherapyDescription' : '',
  'naturalTherapyAddress' : 'محمد سيد أحمد',
  'workTimes' : 'يفتح في الساعة ١ م',
  'Phone' : '01001179993',
},
];


List<Map<String, dynamic>> KidneysData =[
{
  'kidneysImage' : 'assets/guide/health/clinic/kidneys/ahmed_abo_elazm.png',
  'kidneysName' : 'د أحمد أبوالعزم',
  'kidneysDescription' : 'مركز المسالك البوليه',
  'kidneysAddress' : '54 شارع محمود خاطر تقاطع شارع رستم برج الياسمين',
  'workTimes' : 'يفتح في الساعة ١:٣٠ م',
  'Phone' : '01006629609',
},
{
  'kidneysImage' : 'assets/guide/health/clinic/kidneys/mohamed_elsaed.png',
  'kidneysName' : 'دكتور/ محمد السيد عبدالعال',
  'kidneysDescription' : '',
  'kidneysAddress' : 'شارع محمد مصطفى المراغى',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'Phone' : '01204449291',
},
{
  'kidneysImage' : 'assets/guide/health/clinic/kidneys/ahmed_helme.png',
  'kidneysName' : 'د احمد حلمى',
  'kidneysDescription' : 'اخصائى مسالك بولية',
  'kidneysAddress' : '38 أحمد راغب باشا',
  'workTimes' : 'يفتح في الساعة ٧ م',
  'Phone' : '01271660071',
},
{
  'kidneysImage' : 'assets/guide/health/clinic/kidneys/ahmed_mohamed.png',
  'kidneysName' : 'دكتور أحمد محمد ضرغام',
  'kidneysDescription' : '',
  'kidneysAddress' : 'ش أحمد راغب باشا،, قسم حلوان',
  'workTimes' : '',
  'Phone' : '01007890534',
},
{
  'kidneysImage' : 'assets/guide/health/clinic/kidneys/ramez_reda.png',
  'kidneysName' : 'عيادة الدكتور رامز رضا',
  'kidneysDescription' : 'لجراحة المسالك البولية',
  'kidneysAddress' : '26ش شريف بجوار محطة مترو حلوان الدور التاني فوق دهب مول',
  'workTimes' : 'يفتح في الساعة ٨ م',
  'Phone' : '01021749849',
},
];


List<Map<String, dynamic>> PharmaciesData =[
{
  'pharmaciesImage' : 'assets/guide/health/pharmacies/elazaby.png',
  'pharmaciesName' : 'العزبي',
  'pharmaciesAddress' : '29 ش محمد سيد أحمد، قسم حلوان',
  'workTimes' : 'يغلق ١٢:٣٠ ص',
  'phone' : '0235317347',
},
{
  'pharmaciesImage' : 'assets/guide/health/pharmacies/sef.png',
  'pharmaciesName' : 'سيف',
  'pharmaciesAddress' : 'رايل، المساكن الإقتصادية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '01126594785',
},
{
  'pharmaciesImage' : 'assets/guide/health/pharmacies/kayan.png',
  'pharmaciesName' : 'كيان',
  'pharmaciesAddress' : 'بجوار كارفور وسنتر شاهين, ٥٥ ش رايل, مسجد عزام، تقاطع',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '01114010124',
},
{
  'pharmaciesImage' : 'assets/guide/health/pharmacies/yasin.png',
  'pharmaciesName' : 'صيدليه يس',
  'pharmaciesAddress' : 'حيدر، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '0227076356',
},
{
  'pharmaciesImage' : 'assets/guide/health/pharmacies/misr.png',
  'pharmaciesName' : 'صيدليه مصر',
  'pharmaciesAddress' : '8 حيدر، قسم حلوان',
  'workTimes' : '',
  'phone' : '19110',
},
];


List<Map<String, dynamic>> LapData =[
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/Alfa-Labs.png',
  'lapName' : 'معامل الفا Alfa Labs',
  'lapAddress' : '٥٥ شارع رياض تقاطع شارع شريف حلوان الدور، الثاني، حلوان البلد، قسم حلوان،',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01200009242',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/masr.png',
  'lapName' : 'معامل مصر',
  'lapAddress' : '21 ش مصطفى، محمد مصطفى المراغي',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '0227839066',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/nail.png',
  'lapName' : 'معامل نايل كلينيكال لاب للتحاليل الطبية',
  'lapAddress' : '46 شارع منصور، شريف، تقاطع، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '0228164323',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/el_sharka.png',
  'lapName' : 'معامل الشارقة',
  'lapAddress' : '46أ شارع منصور تقاطع، شريف',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01024882433',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/el_borg.png',
  'lapName' : 'معامل البرج',
  'lapAddress' : '26 ش شريف باشا، حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '01117772821',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/kelobatra.png',
  'lapName' : 'معامل كليوباترا',
  'lapAddress' : 'بجوار مترو، 44 شارع منصور تقاطع شارع المراغي برج الصيفي',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '19110',
},
{
  'lapImage' : 'assets/guide/health/Laboratories_x-rays/moktaber.png',
  'lapName' : 'المختبر',
  'lapAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01012225107',
},
];


List<Map<String, dynamic>> HospitalsData =[
{
  'hospitalsImage' : 'assets/guide/health/hospital/elnasr.png',
  'hospitalsName' : 'النصر',
  'hospitalsAddress' : 'المساكن الإقتصادية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '0225559665',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/ltaqwa.png',
  'hospitalsName' : 'التقوي',
  'hospitalsAddress' : 'المساكن الإقتصادية، قسم حلوان, قسم حلوان',
  'workTimes' : '',
  'phone' : '0225546815',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/hoda.png',
  'hospitalsName' : 'الهدي',
  'hospitalsAddress' : 'الفريق عبد المنعم، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '0227086013',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/aman.png',
  'hospitalsName' : 'امان',
  'hospitalsAddress' : '29 Intersection Of Mostafa Fahmy St، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '01147777165',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/elfath.png',
  'hospitalsName' : 'الفتح',
  'hospitalsAddress' : 'المحطة، حلوان الشرقية، قسم حلوان',
  'workTimes' : '',
  'phone' : '0227070226',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/helwan_el3am.png',
  'hospitalsName' : 'حلوان العام',
  'hospitalsAddress' : 'حلوان الشرقية، قسم حلوان',
  'workTimes' : 'مفتوح على مدار 24 ساعة',
  'phone' : '',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/set-5adra.png',
  'hospitalsName' : 'الست خضره',
  'hospitalsAddress' : 'أحمد برهان، قسم حلوان',
  'workTimes' : 'يغلق 6',
  'phone' : '',
},
{
  'hospitalsImage' : 'assets/guide/health/hospital/hoda.png',
  'hospitalsName' : 'هدي طلعت حرب',
  'hospitalsAddress' : 'قسم حلوان',
  'workTimes' : '',
  'phone' : '',
},
];



List<Map<String, dynamic>> MallsStoresSections =[
{
  'MallsStoresName' : 'clothes_fashion'.tr,
  'MallsStoresImage' : 'assets/guide/malls/clothes_fashion/store.jpg',
  'screen' : ClothesSectionsScreen(),
},
{
  'MallsStoresName' : 'shops'.tr,
  'MallsStoresImage' : 'assets/guide/malls/shops/shops.jpg',
  'screen' : ShopsScreen(),
},
{
  'MallsStoresName' : 'malls'.tr,
  'MallsStoresImage' : 'assets/guide/malls/malls/mall.jpg',
  'screen' : MallsScreen(),
},
];


List<Map<String, dynamic>> clothes_fashionSections =[
{
  'clothes_fashionSectionsImage' : 'assets/guide/malls/clothes_fashion/women/women.jpg',
  'clothes_fashionSectionsName' : 'حريمي',
  'screen' : WomenClothesScreen(),
},
{
  'clothes_fashionSectionsImage' : 'assets/guide/malls/clothes_fashion/make-Up/make-Up.jpg',
  'clothes_fashionSectionsName' : 'Make-Up & Skin Care',
  'screen' : makeUpScreen(),
},
{
  'clothes_fashionSectionsImage' : 'assets/guide/malls/clothes_fashion/child/child.jpg',
  'clothes_fashionSectionsName' : 'اطفالي',
  'screen' : ChildClothesScreen(),
},
{
  'clothes_fashionSectionsImage' : 'assets/guide/malls/clothes_fashion/men/men.jpg',
  'clothes_fashionSectionsName' : 'رجالي',
  'screen' : MenScreen(),
},
];

List<Map<String, dynamic>> womenClothesData =[
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/om_maleka.png',
  'womenClothesName' : 'مصنع ومكتب مليكة',
  'womenClothesDescription' : 'للملابس بالجملة',
  'womenClothesAddress' : 'حلوان - كورنيش - خلف عماير السعودية',
  'workTimes' : '01129002441',
  'phone' : '01095316517',
},
{
  'womenClothesImage' : '',
  'womenClothesName' : 'paris',
  'womenClothesDescription' : '',
  'womenClothesAddress' : '٤٦ راغب علي شريف بجوار ماكدونالدز',
  'workTimes' : '',
  'phone' : '01127244464',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/shewan.png',
  'womenClothesName' : 'شيوان',
  'womenClothesDescription' : '',
  'womenClothesAddress' : 'شارع برهان تقاطع،, البراديزو، قسم حلوان، محافظة القاهرة',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01153377985',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/kilo.png',
  'womenClothesName' : 'TRANDATY',
  'womenClothesDescription' : 'حريمي واطفالي',
  'womenClothesAddress' : '',
  'workTimes' : '',
  'phone' : '01202922909',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/arkedia.png',
  'womenClothesName' : 'اركيديا',
  'womenClothesDescription' : '',
  'womenClothesAddress' : 'خسرو، حلوان الشرقية، قسم حلوان، محافظة القاهرة',
  'workTimes' : ' يغلق ١١ م',
  'phone' : '',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/woman_clup.png',
  'womenClothesName' : 'Woman clup',
  'womenClothesDescription' : '',
  'womenClothesAddress' : 'برهان، حلوان الشرقية، قسم حلوان، محافظة القاهرة',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'phone' : '01008605471',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/carina.png',
  'womenClothesName' : 'كارينا',
  'womenClothesDescription' : '',
  'womenClothesAddress' : 'شارع محمد السيد احمد تقاطع شارع رستم ،حلوان،, محافظة القاهرة',
  'workTimes' : 'يغلق ١:٣٠ ص',
  'phone' : '',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/hegazi.png',
  'womenClothesName' : 'حجازي',
  'womenClothesDescription' : '',
  'womenClothesAddress' : 'شارع أحمد راغب باشا، قسم حلوان، محافظة القاهرة',
  'workTimes' : 'يفتح في الساعة ١٢ م',
  'phone' : '0228180642',
},
{
  'womenClothesImage' : 'assets/guide/malls/clothes_fashion/women/jesica.png',
  'womenClothesName' : 'jesica jeans',
  'womenClothesDescription' : '',
  'womenClothesAddress' : '33 شارع راغب تقاطع، شارع محمود خاطر، محافظة القاهرة',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01002289150',
},
];

List<Map<String, dynamic>> makeUpData =[
{
  'makeUpImage' : 'assets/guide/malls/clothes_fashion/make-Up/rose.png',
  'makeUpName' : 'روز',
  'makeUpDescription' : '',
  'makeUpAddress' : '46 أحمد راغب باشا، قسم حلوان ',
  'workTimes' : 'يغلق ١١:٤٠ م',
  'phone' : '01000635100',
},
{
  'makeUpImage' : 'assets/guide/malls/clothes_fashion/make-Up/salah_kamel.png',
  'makeUpName' : 'صلاح كامل',
  'makeUpDescription' : '',
  'makeUpAddress' : 'محمد مصطفى المراغي، قسم حلوان ',
  'workTimes' : 'يغلق ١١:٥٩ م',
  'phone' : '01202735345',
},
{
  'makeUpImage' : 'assets/guide/malls/clothes_fashion/make-Up/jas.png',
  'makeUpName' : 'جاسمين',
  'makeUpDescription' : '',
  'makeUpAddress' : 'الصفا مول، 46 شارع راغب تقاطع، شريف',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '01110938100',
},
];

List<Map<String, dynamic>> childClothesData =[
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/Baby_berry.png',
  'childClothesName' : 'Baby berry',
  'childClothesAddress' : '46 أحمد راغب باشا، قسم حلوان',
  'workTimes' : 'يفتح ⋅ ١٢ م',
  'phone' : '01023063010',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/Kiddieland.png',
  'childClothesName' : 'Kiddieland',
  'childClothesAddress' : 'برهان، حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يفتح في الساعة ١٢:٣٠ م',
  'phone' : '0227084010',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/bubbly.png',
  'childClothesName' : 'بابلي bubbly',
  'childClothesAddress' : 'قسم حلوان ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01061252361',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/puzzle.png',
  'childClothesName' : 'بازل كيدز',
  'childClothesAddress' : 'عبد الله باشا، قسم حلوان',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01006600042',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/Joy_Kids.png',
  'childClothesName' : 'Joy Kids',
  'childClothesAddress' : 'خسرو، حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01158322270',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/Kids_Club_Brand_Stock.png',
  'childClothesName' : 'Kids Club',
  'childClothesAddress' : 'شارع برهان تقاطع، البراديزو',
  'workTimes' : '',
  'phone' : '01008605471',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/Baby_Shop.png',
  'childClothesName' : 'Baby Shop',
  'childClothesAddress' : '٧ شارع مصطفي صفوت تقاطع برهان -حلوان ',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01032835695',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/junior.png',
  'childClothesName' : 'جونيور',
  'childClothesAddress' : 'بجوار الحديقة اليابانية، ١٢، محمد سيد أحمد',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '0227072033',
},
{
  'childClothesImage' : 'assets/guide/malls/clothes_fashion/child/omar.png',
  'childClothesName' : 'عمر وسلمى',
  'childClothesAddress' : '28 أ شارع، خسرو باشا، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يغلق ١١:٣٠ م',
  'phone' : '01148043914',
},
];

List<Map<String, dynamic>> menData =[
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/golden_man.png',
  'menName' : 'جولدن مان هاوس',
  'menAddress' : '41 شارع محمد سيد أحمد، تقاطع شارع عبدالله',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '0228182443',
},
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/tie_house.png',
  'menName' : 'Tie house',
  'menAddress' : 'Mohammed Sayed Ahmed St, Helwan, Cairo, ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01117114177',
},
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/x-box.png',
  'menName' : 'x.box',
  'menAddress' : 'قسم حلوان ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '',
},
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/bellini.png',
  'menName' : 'bellini',
  'menAddress' : '12 شارع رياض تقاطع شارع ذكى بجوار جراند مول،',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '01117772384',
},
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/xxl_twelve.png',
  'menName' : 'Xxxl twelve',
  'menAddress' : 'محمد سيد أحمد، حلوان الشرقية، قسم حلوان',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01113263064',
},
{
  'menImage' : 'assets/guide/malls/clothes_fashion/men/sutra.png',
  'menName' : 'Sutra',
  'menAddress' : '29 ش محمد سيد احمد، قسم حلوان',
  'workTimes' : 'يغلق ١ ص',
  'phone' : '01018026546',
},
];

List<Map<String, dynamic>> shopsData =[
{
  'shopsImage' : 'assets/guide/malls/shops/felo.png',
  'shopsName' : 'فيلو فيلو',
  'shopsDescription' : 'ادوات مطبخ ورفايع',
  'shopsAddress' : 'المشروع الامريكى مجاوره٨ بجوار معرض التقوى للاجهزه وصيدليه دكتور راءد ومسجد التواب قدام الرومانى للبيض',
  'workTimes' : '',
  'phone' : '٠١٢٠٨٨٢٤٧٢١',
},
{
  'shopsImage' : '',
  'shopsName' : 'اولاد تمام',
  'shopsDescription' : 'مستحضرات التجميل والعناية بالبشرة والمنظفات',
  'shopsAddress' : 'شارع منصور خلف سنترال حلوان',
  'workTimes' : 'Open 24 hours',
  'phone' : '01050240193',
},
{
  'shopsImage' : 'assets/guide/malls/shops/el_brka.png',
  'shopsName' : 'جزارة البركة',
  'shopsDescription' : '',
  'shopsAddress' : 'شارع عبدالله علي شريف امام صلاح كامل',
  'workTimes' : '',
  'phone' : '01141614543',
},
];

List<Map<String, dynamic>> mallsData =[
{
  'mallsImage' : 'assets/guide/malls/malls/shahen.png',
  'mallsName' : 'شاهين',
  'mallsDescription' : 'اجهزه كهربائيه وادوات منزليه',
  'mallsAddress' : '41 رايل، قسم حلوان',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '0216291',
},
{
  'mallsImage' : 'assets/guide/malls/malls/rnen.png',
  'mallsName' : 'رنين',
  'mallsDescription' : 'اجهزه كهربائيه و ادوات منزليه',
  'mallsAddress' : 'تقاطع ش منصور مع اسماعيل كامل',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '0237417413',
},
{
  'mallsImage' : 'assets/guide/malls/malls/moll_elkasr.png',
  'mallsName' : 'مول القصر',
  'mallsDescription' : 'ملابس منوعه و احزيه',
  'mallsAddress' : 'حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يغلق ١٢ ص',
  'phone' : '0226715332',
},
{
  'mallsImage' : 'assets/guide/malls/malls/sfa_moll.png',
  'mallsName' : 'صفا مول',
  'mallsDescription' : 'ملابس منوعه و احزيه',
  'mallsAddress' : ': شارع أحمد راغب باشا، قسم حلوان ',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '01141229935',
},
{
  'mallsImage' : 'assets/guide/malls/malls/b-tech.png',
  'mallsName' : 'b.tech',
  'mallsDescription' : 'اجهزه كهربائيه',
  'mallsAddress' : 'أمام بنك الأسكندرية, 36 أ ش راغب باشا, قسم حلوان ',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '0223220621',
},
{
  'mallsImage' : 'assets/guide/malls/malls/dahab.png',
  'mallsName' : 'دهب مول',
  'mallsDescription' : 'ملابس منوعه و احزيه',
  'mallsAddress' : 'حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01125177389',
},
{
  'mallsImage' : 'assets/guide/malls/malls/raya.png',
  'mallsName' : 'رايه',
  'mallsDescription' : 'اجهزه كهربائيه',
  'mallsAddress' : 'شارع أحمد راغب باشا، قسم حلوان ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '01111140533',
},
{
  'mallsImage' : 'assets/guide/malls/malls/rezk.png',
  'mallsName' : 'رزق الله',
  'mallsDescription' : 'اجهزه كهربائيه',
  'mallsAddress' : '43 Mohamed Mostafa El Maraghi, St, قسم حلوان ',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '',
},
{
  'mallsImage' : 'assets/guide/malls/malls/abnaa_elsharqya.png',
  'mallsName' : 'ابناء الشرقيه',
  'mallsDescription' : 'ادوات منزليه',
  'mallsAddress' : '24 شريف، حلوان الشرقية، قسم حلوان',
  'workTimes' : '',
  'phone' : '01005129992',
},
{
  'mallsImage' : 'assets/guide/malls/malls/zahran_tefal.png',
  'mallsName' : 'تيفال زهران',
  'mallsDescription' : 'اجهزه كهربائيه و ادوات منزليه',
  'mallsAddress' : 'Sherif, 38, قسم حلوان',
  'workTimes' : 'يغلق ١٠ م',
  'phone' : '01120806585',
},
{
  'mallsImage' : 'assets/guide/malls/malls/fresh.png',
  'mallsName' : 'Fresh',
  'mallsDescription' : 'اجهزه كهربائيه',
  'mallsAddress' : 'أحمد راغب باشا، قسم حلوان',
  'workTimes' : 'يفتح في الساعة ١٠ ص',
  'phone' : '01278739416',
},
{
  'mallsImage' : 'assets/guide/malls/malls/elshref.png',
  'mallsName' : 'الشريف',
  'mallsDescription' : 'ادوات منزليه',
  'mallsAddress' : '59 محمد مصطفى المراغي، حلوان الشرقية، قسم حلوان ',
  'workTimes' : 'يغلق ١١ م',
  'phone' : '',
},
{
  'mallsImage' : 'assets/guide/malls/malls/gamal_goneam.png',
  'mallsName' : 'جمال غنيم',
  'mallsDescription' : 'اجهزه كهربائيه',
  'mallsAddress' : 'شارع احمد بدوي بجوار مسجد الاستقامة المساكن الاقتصادية - حلوان',
  'workTimes' : '',
  'phone' : '01111189901',
},
{
  'mallsImage' : 'assets/guide/malls/malls/abi_hamada.png',
  'mallsName' : 'ابو حماده',
  'mallsDescription' : 'محل ستائر وستائر تعتيم',
  'mallsAddress' : 'حلوان شارع خسرو على شارع ذكى امام مستشفى ايفر جرين',
  'workTimes' : 'مفتوح دائمًا',
  'phone' : '01070055622',
},
{
  'mallsImage' : 'assets/guide/malls/malls/darak.png',
  'mallsName' : 'دارك',
  'mallsDescription' : 'شارع المراغى تقاطع شارع راغب، 95 شريف، قسم حلوان',
  'mallsAddress' : '',
  'workTimes' : 'يغلق ١١:٣٠ م',
  'phone' : '01022000321',
},
];


List<Map<String, dynamic>> onlineData =[
{
  'onlineImage' : '',
  'onlineName' : 'S & B Colthes',
  'onlineDescription' : '',
  'phone' : 'ملابس اطفالي وحريمي ورجالي ومفروشات',
},
{
  'onlineImage' : '',
  'onlineName' : 'Nader-E Wedding Planner',
  'onlineDescription' : '',
  'phone' : '01067726250',
},
{
  'onlineImage' : '',
  'onlineName' : 'سين',
  'onlineDescription' : 'تفصيل اونلاين',
  'phone' : '01143379910',
},
];


List<Map<String, dynamic>> EducationSections =[
{
  'educationName' : 'schools'.tr,
  'educationImage' : 'assets/guide/education/schools/schools.jpg',
  'educationScreen' : SchoolsScreen(),
},
{
  'educationName' : 'nurseries'.tr,
  'educationImage' : 'assets/guide/education/nurseries/nurseries.jpg',
  'educationScreen' : NurseriesScreen(),
},
{
  'educationName' : 'centers'.tr,
  'educationImage' : 'assets/guide/education/centers/centers.jpg',
  'educationScreen' : CentersScreen(),
},
];


List<Map<String, dynamic>> schoolsData =[
{
  'schoolsName' : 'مدرسه الياس',
  'schoolsAddress' : '4 محمد سيد أحمد، ',
  'phone' : '0227649666',
},
{
  'schoolsName' : 'مدرسه سانت ميري',
  'schoolsAddress' : '20 ش عبد الله ',
  'phone' : '0228183111',
},
{
  'schoolsName' : 'ابن لقمان',
  'schoolsAddress' : '6 ش ذو الفقار، تقاطع شارع لطيف',
  'phone' : '0227133754',
},
{
  'schoolsName' : 'مدرسه الفنار',
  'schoolsAddress' : '54 متفرع من ش شريف',
  'phone' : '0225546820',
},
{
  'schoolsName' : 'الدسوقي',
  'schoolsAddress' : 'المساكن الإقتصادية ',
  'phone' : '0227847427',
},
{
  'schoolsName' : 'مدرسه النهضه',
  'schoolsAddress' : 'المساكن الإقتصادية ',
  'phone' : '',
},
{
  'schoolsName' : 'مدرسة الاورمان سمارت',
  'schoolsAddress' : '101 ش الغربى حلوان القاهرة.',
  'phone' : '0228172185',
},
{
  'schoolsName' : 'العائله المقدسه بنين',
  'schoolsAddress' : '20 أحمد انسي',
  'phone' : '',
},
{
  'schoolsName' : 'مدرسة مصطفى كامل الرسمية للغات',
  'schoolsAddress' : 'امتداد ش رايل حلوان القاهرة',
  'phone' : '0227837410',
},
{
  'schoolsName' : 'مدرسة حافظ ابراهيم الرسمية للغات',
  'schoolsAddress' : '9 ش مصطفى فهمى حلوان القاهرة',
  'phone' : '0228167148',
},
{
  'schoolsName' : 'مدرسة أم المؤمنين الثانوية بنات حلوان',
  'schoolsAddress' : 'شارع مسجد عزام - حلوان',
  'phone' : '0227837190',
},
{
  'schoolsName' : 'مدرسة الشهيد عاطف السادات الثانوية بنين',
  'schoolsAddress' : 'احمد بدوى - حلوان',
  'phone' : '0225561012',
},
];

List<Map<String, dynamic>> nurseriesData =[
{
  'nurseriesName' : 'ABC nurcery',
  'nurseriesAddress' : 'بجوار صيدليه مي، شارع رايل ش ٣ خلف بوسطه، رايل',
  'workTimes' : 'يغلق ٥ م',
  'phone' : '01150949581',
},
{
  'nurseriesName' : 'حضانه كدزينيا',
  'nurseriesAddress' : 'برج الحرمين، الشارع الغربي، حلوان، القاهرة',
  'workTimes' : 'يغلق ٤ م',
  'phone' : '01099123444',
},
{
  'nurseriesName' : 'Kenzy nursery',
  'nurseriesAddress' : '١٢ شارع يوسف باشا',
  'workTimes' : '٣ م ⋅ يفتح ٧ ص يوم الاثنين',
  'phone' : '0110666829',
},
{
  'nurseriesName' : 'بيبي كوليدج',
  'nurseriesAddress' : 'حلوان الشرقية قسم حلوان،',
  'workTimes' : 'يغلق ٦ م',
  'phone' : '01120779939',
},
{
  'nurseriesName' : 'Happy kids',
  'nurseriesAddress' : 'رايل، المساكن الإقتصادية',
  'workTimes' : '',
  'phone' : '01090032261',
},
{
  'nurseriesName' : 'Kids academy',
  'nurseriesAddress' : 'شارع أحمد راغب باشا، ',
  'workTimes' : 'مفتوح ⋅ يغلق ٥ م',
  'phone' : '01063806549',
},
{
  'nurseriesName' : 'our dreams',
  'nurseriesAddress' : 'معرض جمال غنيم للاجهزة المنزلية، أحمد بدوي، المساكن الإقتصادية،',
  'workTimes' : '٣ م ⋅ يفتح ٧ ص يوم الاثنين',
  'phone' : '01150434832',
},
];



List<Map<String, dynamic>> CarsSections =[
{
  'carsSectionsName' : 'sale'.tr,
  'carsSectionsImage' : 'assets/guide/cars/sale.jpg',
  'carsSectionsScreen' : RealEstateSaleScreen(),
},
{
  'carsSectionsName' : 'driving_education'.tr,
  'carsSectionsImage' : 'assets/guide/cars/driving_education.png',
  'carsSectionsScreen' : RealEstateSaleScreen(),
},
{
  'carsSectionsName' : 'Spare_parts_and_maintenance'.tr,
  'carsSectionsImage' : 'assets/guide/cars/maintenance.jpg',
  'carsSectionsScreen' : ElectronicSaleScreen(),
},
{
  'carsSectionsName' : 'rent'.tr,
  'carsSectionsImage' : 'assets/guide/cars/rent.jpg',
  'carsSectionsScreen' : ElectronicSaleScreen(),
},
];
