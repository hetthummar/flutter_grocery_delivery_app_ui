import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/your_order_screen/widget/billing.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/your_order_screen/widget/tracking.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

class OrderDetailsScreenView extends StatefulWidget {
  const OrderDetailsScreenView({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreenView> createState() => _OrderDetailsScreenViewState();
}

class _OrderDetailsScreenViewState extends State<OrderDetailsScreenView> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: Colors.black54
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Text("Home",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.black
                          ),),),
                      Text("48,Ishwer Krupa soc. , Nana Varachha, surat",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                            color: Colors.black54
                        ),),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Container(height: 1.h, width: 300.w,color: const Color(0x30697281) ,),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.timer, color: CupertinoColors.activeGreen,),
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Text("Order will deliver between 8AM-9AM", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Tracking(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal :15.w),
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
                      Text("Items",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                            color: Colors.black54
                        ),
                      ),
                      const OrderItem(name: "Potato", image: "images/potato.png"),
                      const OrderItem(name: "Banana", image: "images/banana.png"),
                      const OrderItem(name: "Milk", image: "images/milk.png"),
                    ],
                  ),
                ),
              ),
            ),
            const Billing(),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: CustomButton(
                  onPressed: ()=> Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(builder: (BuildContext context){
                        return const MainScreenView();
                  }), (route) => false),
                  name: "Have an Issue?"),
            )
          ],
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {

  final String name;
  final String image;

  const OrderItem({super.key, required this.name, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(15.r)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70.h,
                    width: 70.w,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Image.asset(image),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                          style: GoogleFonts.poppins(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text("1 KG",
                          style: GoogleFonts.poppins(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, right: 20.w),
                child: Text("₹50.0",
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
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
