import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/first_screen_view/widgets/screen_pattern.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';

class FirstScreenView extends StatefulWidget {
  const FirstScreenView({Key? key}) : super(key: key);

  @override
  State<FirstScreenView> createState() => _FirstScreenViewState();
}

class _FirstScreenViewState extends State<FirstScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const ScreenPattern(),
              Center(
                  child: Text(
                      "Welcome to",
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400,
                        fontSize: 30.sp,
                        color: const Color(0xff3B3B43)
                    ),
                  ),
              ),
              Center(
                child: Text("Carter grocery",
                  style: GoogleFonts.rubik(fontWeight: FontWeight.w400,
                      fontSize: 30.sp,
                      color: const Color(0xff3B3B43)
                  ),
                ),
              ),
              Center(
                  child: Text("application",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.sp,
                        color: const Color(0xff3B3B43)
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                "Carter online grocery store is the no.1",
                        style: GoogleFonts.rubik(
                          fontSize: 14.sp,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text("grocery application in the world.",
                          style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: const Color(0xff4CAF50)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: const Color(0x75697281)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: const Color(0x75697281)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left:20.w, bottom: 30.h, right: 20.w),
                child: CustomButton(
                    onPressed: ()=> Navigator.pushNamed(context, "second"),
                    name: "Get started"),
              )
            ],
          ),
      ),
    );
  }
}
