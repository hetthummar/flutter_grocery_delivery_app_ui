// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
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
              Text("Verify your number",style: GoogleFonts.rubik(fontSize: 24.sp, fontWeight: FontWeight.w400, color: Colors.black87),),
              Padding(
                padding: EdgeInsets.only(top: 18.h,bottom: 10.h),
                child: Text("We will sent you SMS with a code to", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Text("your number", style: GoogleFonts.rubik(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.black54),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, top: 20.h, right: 25.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    child: InternationalPhoneNumberInput(
                      validator: (value){},
                      onInputChanged: (number) {
                      },
                      initialValue: PhoneNumber(
                          dialCode: "+91",
                          isoCode: "IN",
                      ),
                      inputBorder: InputBorder.none,
                      maxLength: 11,
                      formatInput: true,
                      ignoreBlank: true,
                      cursorColor: Colors.green,
                      selectorConfig: const SelectorConfig(
                        trailingSpace: true,
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                        setSelectorButtonAsPrefixIcon: true,
                      ),
                      spaceBetweenSelectorAndTextField: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
                child: CustomButton(
                    onPressed: ()=> Navigator.pushNamed(context, "login2"),
                    name: "Next"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Center(child: Text("Resend Confirmation Code(1:29)", style: GoogleFonts.rubik(fontWeight: FontWeight.w400,fontSize: 13.sp, color: Colors.black38),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
