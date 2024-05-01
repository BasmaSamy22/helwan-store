import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shared_screens/bottom_nav_bar.dart';
import 'package:helwan_store/shared/shared_widgets/custom_field.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';


class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController NameProductController = TextEditingController();
  TextEditingController PhonepProductController = TextEditingController();
  TextEditingController briefDescriptionProductController = TextEditingController();
  TextEditingController detailedDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productquantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
           appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        title: Text('add_new_product'.tr, style: AppFonts.titleTextStyle,),
        centerTitle: true,

        leading: IconButton( icon: Icon(Icons.arrow_back_ios, color: AppColors.backgroundColor,),
         onPressed: (){
          Navigator.pop(context);
         }),
     ),

     body: Container(
       child: SingleChildScrollView(
         child: Column(
          children: [
              customFiled(Icons.archive, 'productName'.tr, TextInputType.text , TextInputAction.done, NameProductController),
              customFiled(Icons.phone_android, 'phone'.tr, TextInputType.phone , TextInputAction.done, PhonepProductController),
              customFiled(Icons.archive, 'briefDescription'.tr, TextInputType.text , TextInputAction.done, briefDescriptionProductController),///expansion
              customFiled(Icons.archive, 'detailedDescription'.tr, TextInputType.text , TextInputAction.done, detailedDescriptionController),/////expansion
              customFiled(Icons.paid, 'productPrice'.tr, TextInputType.text , TextInputAction.done, productPriceController),
              customFiled(Icons.library_add, 'productquantity'.tr, TextInputType.text , TextInputAction.done, productquantityController),
           
            
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
                        child: Text('addTheProduct'.tr, style: TextStyle( color: AppColors.primaryColor, fontSize: 25, fontWeight: FontWeight.bold)),
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.txtButtonColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          minimumSize: Size(350, 60)
                        ),
                        onPressed: () {
                          
                          if(NameProductController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'productNameIsRequired'.tr)
                           );
                          }else if(PhonepProductController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'phoneIsRequired'.tr)
                            );
                          }else if(briefDescriptionProductController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'briefDescriptionIsRequired'.tr)
                            );
                          }else if(detailedDescriptionController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'detailedDescriptionIsRequired'.tr)
                            );
                          }else if(productPriceController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'productPriceIsRequired'.tr)
                            );
                          }else if(productquantityController.text.isEmpty){
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.black, 'quantityIsRequired'.tr)
                            );
                          }  
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(snack(Colors.green, 'addedSuccessfully'.tr)
                            );
                          //  saveLocal();
                          Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
                          }
                    
                        },
                      ),
           ),
          ],       
         ),
       ),
     ),
    );
  }
}