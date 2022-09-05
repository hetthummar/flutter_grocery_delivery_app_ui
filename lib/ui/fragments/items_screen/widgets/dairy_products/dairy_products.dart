import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/vegetables/vegetables.dart';

class DairyProducts extends StatelessWidget {
  const DairyProducts({Key? key}) : super(key: key);

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
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                  VegetablesList(
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                  VegetablesList(
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  VegetablesList(
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                  VegetablesList(
                    price: '10.0',
                    name: 'Milk',
                    image: 'images/milk.png',),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}