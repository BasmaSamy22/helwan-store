import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';


class SponsoredAdsWidget extends StatefulWidget {
  const SponsoredAdsWidget({super.key});

  @override
  State<SponsoredAdsWidget> createState() => _SponsoredAdsWidgetState();
}

class _SponsoredAdsWidgetState extends State<SponsoredAdsWidget> {

  int activeIndex = 0;
   final sponsoredAdsImages =[
    'assets/Ads/Educational_guide.jpg',
    'assets/Ads/Medical_evidence.jpg',
    'assets/Ads/Restaurant_guide.jpg',
    'assets/Ads/Stores_directory.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       
        children: [
          CarouselSlider.builder(
            itemCount: sponsoredAdsImages.length,
             options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              viewportFraction: 1,
              onPageChanged: (index, reason) => 
                 setState(() => activeIndex = index),
              ),
             itemBuilder: (context, index, realIndex) {
              final sponsoredAdsImage = sponsoredAdsImages[index];

              return buildSponseredImage(sponsoredAdsImage, index);
             },
             ),

           SizedBox(height: 32,),

          buildIndicator(),
        ],
      ),
    );
  }
  
  Widget buildSponseredImage(String sponsoredAdsImage, int index) => Container(
    child: Image.asset(
      sponsoredAdsImage,
      fit: BoxFit.fill,
    ),
  );
  
 Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex, 
  count: sponsoredAdsImages.length
  );
}