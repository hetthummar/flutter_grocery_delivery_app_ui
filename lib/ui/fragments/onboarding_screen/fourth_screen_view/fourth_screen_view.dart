import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';

class FourthScreenView extends StatefulWidget {
  const FourthScreenView({Key? key}) : super(key: key);

  @override
  State<FourthScreenView> createState() => _FourthScreenViewState();
}

class _FourthScreenViewState extends State<FourthScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/fourth_screen.png"), fit: BoxFit.fitWidth)
            ),
          ),
          Positioned(
            bottom: 60.h,
            left: 20.w,
            right: 20.w,
            child: Center(
              child: Column(
                children: [
                  Center(child: Text("Welcome",style: GoogleFonts.rubik(fontSize: 44.sp, color: Colors.white),)),
                  Center(child: Text("To our store",style: GoogleFonts.rubik(fontSize: 44.sp, color: Colors.white),)),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
                    child: Center(child: Text("Login with mobile number to get start", style: GoogleFonts.rubik(fontSize: 13.sp, color: Colors.white, letterSpacing: 1.sp),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: CustomButton(
                        onPressed: ()=> Navigator.pushNamed(context, "login"),
                        name: "GET STARTED"
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
