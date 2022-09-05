import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyCouponScreenView extends StatefulWidget {
  const ApplyCouponScreenView({Key? key}) : super(key: key);

  @override
  State<ApplyCouponScreenView> createState() => _ApplyCouponScreenViewState();
}

class _ApplyCouponScreenViewState extends State<ApplyCouponScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back,color: Colors.black),
        ),
        centerTitle: true,
        title: Text("APPLY COUPONS",style: GoogleFonts.poppins(fontSize: 18.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12.sm),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200, width: 1.w)
                  ),
                  child: TextField(
                    cursorHeight: 24.h,
                    cursorColor: const Color(0xffB3BCCA),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal : 20.w),
                      hintText: "Enter coupon code",
                      hintStyle: GoogleFonts.poppins(color: Colors.blueGrey.shade200, fontWeight: FontWeight.w400, fontSize: 12.sp),
                      suffixText: "APPLY",
                      suffixStyle: GoogleFonts.poppins(color: Colors.green, fontWeight: FontWeight.w400, fontSize: 12.sp),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                child: Row(
                  children: [
                    Text("AVAILABLE COUPONS",
                      style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xff7E7F81)),),
                  ]
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDF8E4),
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(color: Colors.blueGrey.shade100,width: 1.w)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                                  child: Text("ZOPLKA",
                                    style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
                                ),
                              ),
                              Text(
                                  "APPLY",
                                  style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400, color: Colors.green))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                            child: Text("Get 20% discount on first three order",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87
                              ),
                            ),
                          ),
                          Container(height: 1.h,width: double.maxFinite,color: Colors.black12,),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                            child: Text("Maximum discount of 120₹",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text(
                              "Terms & Condition Apply",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h, left: 5.w),
                            child: Column(
                              children: const [
                                Condition(),
                                Condition(),
                                Condition(),
                                Condition(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDF8E4),
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(color: Colors.blueGrey.shade100,width: 1.w)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                                  child: Text("ZOPLKA",
                                    style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
                                ),
                              ),
                              Text(
                                  "APPLY",
                                  style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400, color: Colors.green))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                            child: Text("Get 20% discount on first three order",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87
                              ),
                            ),
                          ),
                          Container(height: 1.h,width: double.maxFinite,color: Colors.black12,),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                            child: Text("Maximum discount of 120₹",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text("Terms & Condition Apply",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: Text("+ 20 More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueAccent
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDF8E4),
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(color: Colors.blueGrey.shade100,width: 1.w)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                                  child: Text("ZOPLKA",
                                    style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
                                ),
                              ),
                              Text(
                                  "APPLY",
                                  style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400, color: Colors.green))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                            child: Text("Get 20% discount on first three order",
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87
                              ),
                            ),
                          ),
                          Container(height: 1.h,width: double.maxFinite,color: Colors.black12,),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                            child: Text("Maximum discount of 120₹",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Text("Terms & Condition Apply",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, left: 10.w),
                            child: Text("+ 20 More",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blueAccent
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class Condition extends StatelessWidget {
  const Condition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, right: 15.w),
          child: CircleAvatar(radius: 2.5.r,backgroundColor: Colors.black54),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Text("Order shall be minimum",
            style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black87
            ),
          ),
        ),
      ],
    );
  }
}
