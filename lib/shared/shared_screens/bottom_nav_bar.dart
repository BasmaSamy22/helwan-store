import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/product/view/store_screen.dart';
import 'package:helwan_store/shared/shared_screens/home_page_screen.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/user/views/profile_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int selectedIndex = 0;

  final List<Map<String,dynamic>> icons =[
    {
      'icon' : Icons.home,
      'screen' : HomeScreen(),
      'label' : "home".tr
    },
    {
      'icon' : Icons.shopping_bag,
      'screen' : StoreScreen(),
      'label' : "store".tr
    },
    {
      'icon' : Icons.person,
      'screen' : ProfileScreen(),
      'label' : "profile".tr
    }
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor :AppColors.primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(color: AppColors.backgroundColor, size: 30),
        unselectedIconTheme: IconThemeData(color: Colors.grey[360], size: 30),
        selectedItemColor: AppColors.backgroundColor,
        unselectedItemColor: Colors.grey[360],
        items: [
          for(int i = 0; i < icons.length; i++)
          BottomNavigationBarItem(
            icon: Icon(icons[i]['icon']),
            label: icons[i]['label']
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index){
          selectedIndex = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: icons[selectedIndex]['screen'],
    );
  }
}