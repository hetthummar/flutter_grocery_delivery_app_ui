// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreenView extends StatefulWidget {
  const VerificationScreenView({Key? key}) : super(key: key);

  @override
  State<VerificationScreenView> createState() => _VerificationScreenViewState();
}

class _VerificationScreenViewState extends State<VerificationScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context, "login"),
          child: const Icon(CupertinoIcons.back, color: Colors.black,),
        ),
        centerTitle: true,
        title: Text("Login",style: GoogleFonts.rubik(fontSize: 18.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: Column(
            children: [
              Text("Enter OTP",style: GoogleFonts.rubik(fontSize: 25.sp, fontWeight: FontWeight.w400, color: Colors.black),),
              Padding(
                padding: EdgeInsets.only(top: 25.h,bottom: 8.h),
                child: Text("We will sent you SMS with a code to", style: GoogleFonts.rubik(fontSize: 15.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Text("your number +91 88669 31600", style: GoogleFonts.rubik(fontSize: 15.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 30.w),
              //   child : PinCodeTextField(
              //     appContext: (context),
              //     onChanged: (value){},
              //     onCompleted: (value){Navigator.pushNamed(context, "login3");},
              //     length: 6,
              //     cursorColor: Colors.green,
              //     pinTheme: PinTheme(
              //       fieldWidth: 45.w,
              //       fieldHeight: 60.w,
              //       borderRadius: BorderRadius.circular(5.r),
              //       shape: PinCodeFieldShape.box,
              //       borderWidth: 2.w,
              //       inactiveColor : Colors.white,
              //       selectedColor: Colors.green,
              //       inactiveFillColor: Colors.white,
              //       activeColor: Colors.grey.shade100,
              //       activeFillColor: Colors.white,
              //       selectedFillColor: Colors.white
              //     ),
              //   )
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Pinput(
                   onCompleted: (String)=> Navigator.pushNamed(context, "login3"),
                  length: 6,
                  // followingPinTheme: PinTheme(
                  //   constraints: BoxConstraints(maxHeight: 60.h, maxWidth: 45.w),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(width: 2.w, color: Colors.green)
                  //   ),
                  // ),
                  defaultPinTheme: PinTheme(
                    height: 60.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r)
                    ),
                    textStyle: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      color: Colors.grey.shade700
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  children: [
                    Center(child: Text("Didn't receive the code?", style: GoogleFonts.rubik(fontWeight: FontWeight.w300,fontSize: 14.sp),)),
                    Center(child: Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Text("Resend a new code", style: GoogleFonts.rubik(fontWeight: FontWeight.w300,fontSize: 14.sp, color: Colors.green),),
                    )),
                  ],
                ),
              ),
            ]
          ),
      ),
      )
    );
  }
}
