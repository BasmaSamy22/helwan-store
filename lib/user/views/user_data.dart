import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';




class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {

  File? pickedImage;
  String language = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
       appBar: AppBar(

        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
         leading: IconButton(
        icon: Icon(Icons.arrow_back_ios ,
         color: AppColors.primaryColor, 
        size: 20,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
       ),
      ),
       body: Container(
          margin: EdgeInsets.all(10),         
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 150,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: pickedImage == null ? DecorationImage(
                        image: AssetImage('assets/person.png')
                      ) : DecorationImage(
                        image: FileImage(pickedImage!),
                        fit: BoxFit.fill
                        ) 
                    ),
                    
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.primaryColor,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_photo_alternate),
                        color:Colors.white,
                        iconSize: 30,
                        onPressed: () async{
                          XFile? img = await ImagePicker().pickImage(source: ImageSource.camera);
                          pickedImage = File(img!.path);
                    
                          setState(() { });
                        },
                                       ),
                    ),
                  ),
                ],
              ),
             item('name'.tr, 'user name', Icons.person),
             item('email'.tr, 'userName@gmail.com', Icons.email),
             item('phone'.tr, '01111111111', Icons.phone),
             item('password'.tr, '**********', Icons.lock),

             ListTile(
              leading: Icon(Icons.language, color: AppColors.primaryColor, size: 20,),
              title: Text('Language', style: AppFonts.subtitleTextStyle,),
              subtitle: Text(language),
              trailing: PopupMenuButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                icon: Icon(Icons.arrow_drop_down, color: AppColors.primaryColor),
                color: Colors.white,
                iconSize: 35,
                itemBuilder: (context){
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      child: Text('English'),
                      value: 'en',
                      ),
                        PopupMenuItem(
                      child: Text('عربي'),
                      value: 'ar',
                      ),
                  ];
                },
                onSelected: (value) {
                  language = value;

                  setState(() {});
                 Get.updateLocale(Locale(language));
                },
                ),
             )
            ],
          ),
        ),

    );
  }
  
  ListTile item(String title, String subTitle, IconData icon){
    return  ListTile(
      leading: Icon(icon, color: AppColors.primaryColor, size: 20,),
      title: Text(title, style: AppFonts.subtitleTextStyle,),
       
      subtitle: Text(subTitle, style: AppFonts.littleprimaryTextStyle,),
              );
  }
}