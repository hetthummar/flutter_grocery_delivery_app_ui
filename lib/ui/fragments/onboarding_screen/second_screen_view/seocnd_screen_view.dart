import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/first_screen_view/widgets/screen_pattern.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';

class SecondScreenView extends StatefulWidget {
  const SecondScreenView({Key? key}) : super(key: key);

  @override
  State<SecondScreenView> createState() => _SecondScreenViewState();
}

class _SecondScreenViewState extends State<SecondScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              const ScreenPattern(),
              Center(
                child: Text("Best quality",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w400,
                      fontSize: 30.sp,
                      color: const Color(0xff3B3B43)
                  ),
                ),
              ),
              Center(
                child: Text("grocery at your",
                  style: GoogleFonts.rubik(fontWeight: FontWeight.w400,
                      fontSize: 30.sp,
                      color: const Color(0xff3B3B43)
                  ),
                ),
              ),
              Center(
                  child: Text("doorstep!",
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
                      child: Text("Carter online grocery store where",
                        style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Text("we deliver everything on time.",
                          style: GoogleFonts.rubik(
                              fontSize: 14.sp,
                              color: Colors.black54,
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
                            color: const Color(0x75697281)
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
                            color: const Color(0xff4CAF50)
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
                padding: EdgeInsets.only(bottom: 30.h, left: 20.w, right: 20.w),
                child: CustomButton(
                    onPressed: ()=> Navigator.pushNamed(context, "third"),
                    name: "Skip"
                ),
              ),
            ],
          )),
    );
  }
}
