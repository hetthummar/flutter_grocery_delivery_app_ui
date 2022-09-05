import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

class OrderScreenView extends StatefulWidget {
  const OrderScreenView({Key? key}) : super(key: key);

  @override
  State<OrderScreenView> createState() => _OrderScreenViewState();
}

class _OrderScreenViewState extends State<OrderScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar : AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back,color: Colors.black),
        ),
        centerTitle: true,
        title: Text("My Orders",style: GoogleFonts.poppins(fontSize: 18.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 15.w, right: 15.w),
              child: GestureDetector(
                onTap: ()=> Navigator.pushNamed(context, "order_details"),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 27.r,
                                  backgroundColor: const Color(0xffEDF8E4),
                                  child: const Icon(CupertinoIcons.cube_box, color: Colors.green,),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Order #44698", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp),),
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 6.h),
                                        child: Text("Placed on Decmber 15, 2020", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                                      ),
                                      Text("Total:  \$16.99", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(height: 1.h,width: 344.w, color: const Color(0xffE2E6EC),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 7.r,
                                  backgroundColor: Colors.green,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text("Order will deliver between 8AM-9AM", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 15.w, right: 15.w),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment : CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 27.r,
                                backgroundColor: const Color(0xffF3F5F8),
                                child: const Icon(CupertinoIcons.cube_box, color: Colors.black38,),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Order #44698", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp),),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 6.h),
                                      child: Text("Placed on Decmber 15, 2020", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                                    ),
                                    Text("Total:  \$16.99", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(height: 1.h,width: 344.w, color: const Color(0xffE2E6EC),),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 7.r,
                                backgroundColor: const Color(0xff697281),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Text("Order Delivered", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 90.w),
                                child: Text("Dec 10, 2020", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
