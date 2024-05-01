import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/shared/shared_screens/bottom_nav_bar.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';
import 'package:helwan_store/user/logic/user_controller.dart';
import 'package:helwan_store/user/views/user_data.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String language = '';

  final List<Map<String, dynamic>> items =[
    {
      'icon' : Icons.person,
      'title' : 'profil_Data'.tr,
      'screen' : UserDataScreen(),
    },
    // {
    //   'icon' : Icons.language,
    //   'title' : 'language',
    //   'screen' : UserDataScreen(),
    // },
    // {
    //   'icon' : Icons.notifications,
    //   'title' : 'Notifications',
    //   'screen' : UserDataScreen(),
    // },
    {
      'icon' : Icons.exit_to_app_sharp,
      'title' : 'log_out'.tr,
      'screen' : UserDataScreen(),
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: AppColors.primaryColor,
       appBar: AppBar(
        title: Text('profil_Data'.tr, 
        style:AppFonts.titleTextStyle
          ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios ,
         color: AppColors.txtButtonColor, 
        size: 20,
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
        },
       ),
      ),

      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon( items[index]['icon'], color: AppColors.txtButtonColor, size: 20,),
              title: Text( items[index]['title'], style: AppFonts.subprimarywhiteTextStyle,),
              trailing: Icon( Icons.arrow_forward_ios, color: AppColors.txtButtonColor,),
              onTap: () async{
                 index == 1 ? 
                await clearLocal() :
                Navigator.push(context, MaterialPageRoute(builder: (_) => items[index]['screen']));
              },
            );
          },
        ),
      ),

    );
  }
}