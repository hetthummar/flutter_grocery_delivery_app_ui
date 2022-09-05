import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Coupon extends StatefulWidget {
  const Coupon({Key? key}) : super(key: key);

  @override
  State<Coupon> createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(
                                  color: Colors.black12,
                                  width: 1.w
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(7.sm),
                            child: const Icon(Icons.location_on_outlined, color: Colors.black45,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.w, top: 15.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Deliver to other",
                                style: GoogleFonts.rubik(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w, bottom: 10.h, top: 2.h),
                                child: Text("Your location",
                                  style: GoogleFonts.rubik(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black38
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.w, bottom: 8.h),
                                child: Text("Delivers between 8AM - 10 AM",
                                  style: GoogleFonts.rubik(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff3B3B43),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.h, right: 8.w),
                      child: Text("CHANGE",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.orange.shade800
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffFCF9F9),
                        borderRadius: BorderRadius.circular(6.r)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("₹ 440", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400),),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                                child: Row(
                                  children: [
                                    Text("VIEW DETAILED BILL", style: GoogleFonts.rubik(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Colors.blueAccent),),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.w),
                                      child: Icon(CupertinoIcons.chevron_down, color: Colors.blueAccent,size: 15.sp,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.green
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                              child: Text(
                                "MAKE PAYMENT",
                                style: GoogleFonts.rubik(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
