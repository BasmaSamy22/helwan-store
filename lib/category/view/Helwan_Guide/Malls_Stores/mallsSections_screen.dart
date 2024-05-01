import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helwan_store/category/view/Helwan_Guide/Malls_Stores/mallsSections_widget.dart';
import 'package:helwan_store/demo_data.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';

class MallsStoresScreen extends StatefulWidget {
  const MallsStoresScreen({super.key});

  @override
  State<MallsStoresScreen> createState() => _MallsStoresScreenState();
}

class _MallsStoresScreenState extends State<MallsStoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text('malls_stores'.tr, style: AppFonts.titleTextStyle,),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 25, color: AppColors.backgroundColor,),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        centerTitle: true,
        ),

        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 210
            ),
            itemCount: MallsStoresSections.length,
          itemBuilder: (context, index) {
            return MallsStoresWidget(MallsStoresSections[index]);
          },),
        
    );
  }
}