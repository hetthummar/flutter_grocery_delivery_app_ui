import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, bottom: 15.h, right: 15.w),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Status",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: Colors.black54
                ),
              ),
              SizedBox(
                height: 40.h,
                child: TimelineTile(
                  endChild: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order placed",style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400),),
                        Text("Dec 10, 2020",style: GoogleFonts.poppins(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.black54),)
                      ],
                    ),
                  ),
                  isFirst: true,
                  indicatorStyle: IndicatorStyle(
                      width: 12.w,
                      height: 12.h,
                      color: Colors.green
                  ),
                  beforeLineStyle: LineStyle(thickness: 2.5.w, color: Colors.green),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: TimelineTile(
                  endChild: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Out For Delivery",style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400),),
                        Text("Dec 10, 2020",style: GoogleFonts.poppins(fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.black54),)
                      ],
                    ),
                  ),
                  indicatorStyle: IndicatorStyle(
                      width: 12.w,
                      height: 12.h,
                      color: Colors.green
                  ),
                  beforeLineStyle: LineStyle(thickness: 2.5.w, color: Colors.green),
                ),
              ),
              SizedBox(
                height: 40.h,
                child: TimelineTile(
                  endChild: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Delivered",style: GoogleFonts.poppins(fontSize: 13.sp, fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                  isLast: true,
                  indicatorStyle: IndicatorStyle(
                      width: 12.w,
                      height: 12.h,
                      color: Colors.grey.shade400
                  ),
                  beforeLineStyle: LineStyle(thickness: 2.5.w, color: const Color(0xffB3BCCA)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
