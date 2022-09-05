import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPattern extends StatefulWidget {
  const ScreenPattern({Key? key}) : super(key: key);

  @override
  State<ScreenPattern> createState() => _ScreenPatternState();
}

class _ScreenPatternState extends State<ScreenPattern> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Container(
              margin: EdgeInsets.all(40.sm),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.r),
                  child: Image.asset("images/grocerry.jpeg")),
            ),
          ),
        ),
        Positioned(
          left: 20.w,
          top: 55.h,
          child: Container(
            height: 85.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: const Color(0xff4CAF50),
              borderRadius: BorderRadius.circular(50.r),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x806CC51D),offset: const Offset(3, 8), blurRadius: 10.r
                )
              ],
            ),
            child: Center(
              child: Text(
                "carter",
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w200

                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 25.w,
          top: 40.h,
          child: Container(
            height: 62.h,
            width: 62.h,
            decoration: BoxDecoration(
                color: const Color(0xff4CAF50),
              borderRadius: BorderRadius.circular(60)
            ),
            child: Center(
              child: Container(
                height: 42.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.r)
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60.w,
          left: 40.h,
          child: Container(
            height: 40.h,
            width: 40.h,
            decoration: BoxDecoration(
                color: const Color(0xff4CAF50),
                borderRadius: BorderRadius.circular(60)
            ),
            child: Center(
              child: Container(
                height: 20.h,
                width: 18.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.r)
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 90.h,
          right: 45.w,
          child: Container(
            height: 20.h,
            width: 18.w,
            decoration: BoxDecoration(
                color: const Color(0xff4CAF50),
                borderRadius: BorderRadius.circular(40.r)
            ),
          ),
        ),
      ],
    );
  }
}
