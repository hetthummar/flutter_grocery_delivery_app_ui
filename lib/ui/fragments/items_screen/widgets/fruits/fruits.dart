import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/popular_items/dropdown_list.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/dairy_products/dairy_products.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/vegetables/vegetables.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({Key? key}) : super(key: key);

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
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                  VegetablesList(
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                  VegetablesList(
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                  VegetablesList(
                    price: '30.0',
                    name: 'Potato',
                    image: 'images/potato.png',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
