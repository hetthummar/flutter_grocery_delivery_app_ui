import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstList extends StatelessWidget {

  final String caption;
  final String image;

  const FirstList({super.key, required this.caption, required this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w, bottom: 10.h),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                boxShadow: [
                  BoxShadow(color: Colors.black12,offset: const Offset(0, 5), blurRadius: 5.r)
                ],
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.asset(image, fit: BoxFit.fitWidth,))),
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
      ],
    );
  }
}
