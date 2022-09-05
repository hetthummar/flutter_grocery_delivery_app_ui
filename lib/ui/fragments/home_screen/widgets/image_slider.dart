import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatelessWidget {

  final String caption;
  final String image;
  ImageSlider({super.key, required this.caption, required this.image});

  final assetImage = [
    "images/first_list_1.jpeg",
    "images/first_list_2.jpeg",
    "images/first_list_3.jpeg",
    "images/first_list_4.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        itemCount: assetImage.length,
        itemBuilder: (context, index, realIndex){
          final image = assetImage[index];
          return Stack(
              children: [
                Padding(padding: EdgeInsets.only(right: 20.w),
                  child: SizedBox(
                    height: 160.h, width: 250.w,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(image, fit: BoxFit.fitWidth,)),
                  ),
                ),
                Positioned(
                  left: 15.w,
                  bottom: 20.h,
                  child: Text(
                    caption,
                    style: GoogleFonts.rubik(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                )
              ]
          );
          }, options: CarouselOptions(),
      ),
    );
  }
}