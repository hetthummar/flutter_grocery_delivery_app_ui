// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CatagoriesList extends StatelessWidget {

  final String name;
  final String image;
  final color;

  const CatagoriesList({super.key,
    required this.name,
    required this.image,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Container(
        height: 170.h,
        width: 160.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: color,
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(image),fit: BoxFit.fitWidth)
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15.h, left: 10.w),
          child: Text(
            name,
            style: GoogleFonts.rubik(
                letterSpacing: 0.5,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey.shade800
            ),
          ),
        ),
      ),
    );
  }
}
