import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/popular_items/dropdown_list.dart';

class PopularItemsList extends StatelessWidget {

  final String name, price, image;

  const PopularItemsList({super.key, required this.name, required this.price, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: const Color(0xffF7F7F7)
        ),
        child: Padding(
          padding: EdgeInsets.all(10.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 110.w,
                      height: 110.h,
                      child: Image.asset(image)
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.rubik(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            "QTY.",
                            style: GoogleFonts.rubik(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black38
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: const DropList(),
                        ),
                        Text(
                          "₹ $price",
                          style: GoogleFonts.rubik(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.green
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w, top: 60.h),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: Colors.green
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Text("-    1    +",
                        style: GoogleFonts.rubik(
                            fontSize: 13.sp,
                            color: Colors.white
                        ),),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
