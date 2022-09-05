import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/popular_items/dropdown_list.dart';

class Fruits extends StatelessWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: const [
                   VegetablesList(
                     price: '50.0',
                     name: 'Banana',
                     image: 'images/banana.png',),
                   VegetablesList(
                     price: '50.0',
                     name: 'Banana',
                     image: 'images/banana.png',),
                 ],
               ),
             ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '50.0',
                    name: 'Banana',
                    image: 'images/banana.png',),
                  VegetablesList(
                    price: '50.0',
                    name: 'Banana',
                    image: 'images/banana.png',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '50.0',
                    name: 'Banana',
                    image: 'images/banana.png',),
                  VegetablesList(
                    price: '50.0',
                    name: 'Banana',
                    image: 'images/banana.png',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VegetablesList extends StatelessWidget {

  final String name;
  final String image;
  final String price;

  const VegetablesList({super.key, required this.name, required this.image, required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: BoxDecoration(
          color: const Color(0xffF3F5F8),
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade100,offset: const Offset(0, 5), blurRadius: 5.r)
          ]
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Image.asset(image),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.r), bottomLeft:Radius.circular(15.r)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.rubik(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Text(
                          "QTY.",
                          style: GoogleFonts.rubik(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black26
                          ),
                        ),
                      ),
                      const DropList(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹$price",
                          style: GoogleFonts.rubik(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.green
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.green
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
                            child: Text("Add",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )
    ;
  }
}
