import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';

class Address2ScreenView extends StatefulWidget {
  const Address2ScreenView({Key? key}) : super(key: key);

  @override
  State<Address2ScreenView> createState() => _Address2ScreenViewState();
}

class _Address2ScreenViewState extends State<Address2ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/map.png"), fit: BoxFit.cover)
            ),
          ),
          SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.sm),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: const Icon(CupertinoIcons.back, color: Colors.black,),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.h),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: GoogleFonts.rubik(color: Colors.black45, fontWeight: FontWeight.w400),
                                  prefixIcon: const Icon(CupertinoIcons.search),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(25.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: Text(
                              "Select Your Location",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w400,
                                fontSize: 21.sp,
                                color: const Color(0xff000000)
                              ),
                            ),
                          ),
                          TextField(
                            cursorHeight: 30.h,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                              focusColor: Colors.black,
                              focusedBorder: const UnderlineInputBorder(),
                              labelText: "YOUR LOCATION",
                              labelStyle: GoogleFonts.rubik(fontSize: 18.sp, fontWeight: FontWeight.w200, color: Colors.black54),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: CustomButton(
                                  onPressed: ()=> Navigator.pushNamed(context, "address3"),
                                  name: "Confirm Location & Proceed"
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          )
        ],
      ),
    );
  }
}
