import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

class Address1ScreenView extends StatefulWidget {
  const Address1ScreenView({Key? key}) : super(key: key);

  @override
  State<Address1ScreenView> createState() => _Address1ScreenViewState();
}

class _Address1ScreenViewState extends State<Address1ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80.h, bottom: 60.h),
                    child: SvgPicture.asset("images/address.svg"),
                  ),
                  Text("Select Your Location",style: GoogleFonts.rubik(fontSize: 22.sp, fontWeight: FontWeight.w400, color: Colors.black87),),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 25.h),
                    child: Column(
                      children: [
                        Text("Please give us information about address",style: GoogleFonts.rubik(fontSize: 15.sp, color: Colors.black54),),
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text("so we can deliver grocery to you.",style: GoogleFonts.rubik(fontSize: 15.sp, color: Colors.black54),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomButton(
                        onPressed: ()=> Navigator.pushNamed(context, "address2"),
                        name: "SELECT NOW"
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> Navigator.pushAndRemoveUntil(
                        context,
                      MaterialPageRoute(builder: (BuildContext context){
                        return  MainScreenView();
                      }),(route)=> false),
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        "SKIP FOR NOW",
                        style: GoogleFonts.rubik(
                            fontSize: 14.sp,
                            color: Colors.black54),
                      ),
                    ),
                  ),

                ],
              ),
            )
        ),
    );
  }
}
