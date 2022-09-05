// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';

class LoginNameScreenView extends StatefulWidget {
  const LoginNameScreenView({Key? key}) : super(key: key);

  @override
  State<LoginNameScreenView> createState() => _LoginNameScreenViewState();
}

class _LoginNameScreenViewState extends State<LoginNameScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context, "login2"),
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
              Text("What is your Name",style: GoogleFonts.rubik(fontSize: 25.sp, fontWeight: FontWeight.w400, color: Colors.black),),
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 8.h),
                child: Text("Please enter your name so we", style: GoogleFonts.rubik(fontSize: 15.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Text("can identify you.", style: GoogleFonts.rubik(fontSize: 15.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Icon(Icons.person, color: const Color(0xff626262), size: 25.sp,),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Enter your good name",
                          hintStyle: GoogleFonts.rubik(color:const Color(0x70626262),fontSize: 16.sp),
                          contentPadding: EdgeInsets.only(top: 16.h),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 8.h),
                child: CustomButton(
                    onPressed:()=> Navigator.pushNamed(context, "address1"),
                    name: "Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
