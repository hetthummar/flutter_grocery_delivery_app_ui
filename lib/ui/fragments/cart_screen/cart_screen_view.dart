import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/cart_screen/single_cart_list.dart';
import 'package:grocerry_delivery/ui/fragments/cart_screen/widgets/coupon_widget.dart';

class CartScreenView extends StatefulWidget {
  const CartScreenView({Key? key}) : super(key: key);

  @override
  State<CartScreenView> createState() => _CartScreenViewState();
}

class _CartScreenViewState extends State<CartScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text("Cart",style: GoogleFonts.rubik(fontSize: 22.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const CartItemList(name: "Potato", image: "images/potato.png", price: "50"),
                      const CartItemList(name: "Banana", image: "images/banana.png", price: "20"),
                      const CartItemList(name: "Broccoli", image: "images/broccoli.png", price: "10"),
                      const CartItemList(name: "Milk", image: "images/milk.png", price: "40"),
                      const CartItemList(name: "Milk", image: "images/milk.png", price: "40"),
                      const CartItemList(name: "Milk", image: "images/milk.png", price: "40"),
                      const CartItemList(name: "Milk", image: "images/milk.png", price: "40"),
                      GestureDetector(
                        onTap: ()=> Navigator.pushNamed(context, "coupon"),
                        child: Column(
                          children: [
                            Container(height: 8.h, width: double.maxFinite,color: const Color(0xffF2F4F9),),
                            Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                                          child: Row(
                                            children: [
                                              Icon(CupertinoIcons.percent, color: Colors.black54,size: 20.sp,),
                                              Padding(
                                                padding: EdgeInsets.only(left: 16.w),
                                                child: Text("Apply Coupon",
                                                  style: GoogleFonts.rubik(
                                                      fontSize: 14.sp,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 20.w),
                                          child: Icon(CupertinoIcons.forward, color: Colors.black54,size: 20.sp,),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Container(height: 8.h, width: double.maxFinite,color: const Color(0xffF2F4F9),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
              const Align(
                alignment: Alignment.bottomCenter,
                  child: Coupon()),
          ],
        ),
      ),
    );
  }
}
