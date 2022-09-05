import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/adrees_screens/address3_screen/widgets/select_location.dart';
import 'package:grocerry_delivery/ui/fragments/widgets/custom_button/custom_button.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

class Address3ScreenView extends StatefulWidget {
  const Address3ScreenView({Key? key}) : super(key: key);

  @override
  State<Address3ScreenView> createState() => _Address3ScreenViewState();
}

class _Address3ScreenViewState extends State<Address3ScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("images/location_map.png", fit: BoxFit.cover,),
                Positioned(
                  top: 30.h,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context, "login2"),
                    child: Padding(
                      padding: EdgeInsets.only(left :15.w),
                      child: Icon(CupertinoIcons.back, color: Colors.black,size: 30.sm,),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left:25.w, top: 40.h, right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Text(
                        "Enter address details",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w400,
                            fontSize: 21.sp,
                            color: Colors.black,
                        ),
                      ),
                    ),
                    TextField(
                      cursorHeight: 30.h,
                      cursorColor: Colors.green,
                      decoration: InputDecoration(
                        suffixText: "Change",
                        suffixStyle: GoogleFonts.rubik(
                            color: Colors.green,
                            fontSize: 16.sp),
                        focusColor: Colors.black,
                        focusedBorder: const UnderlineInputBorder(),
                        labelText: "YOUR LOCATION",
                        labelStyle: GoogleFonts.rubik(fontSize: 18.sp, fontWeight: FontWeight.w200, color: Colors.black54),
                      ),
                    ),
                    textField(label: "STREET NUMBER & NAME"),
                    textField(label: "LANDMARK"),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        "Tag this Location for later",
                        style: GoogleFonts.rubik(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: const SelectLocation(),
                    ),
                    Center(
                      child: CustomButton(
                          onPressed: ()=> Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(builder: (BuildContext context){
                            return const MainScreenView();
                          }),(route) => false),
                          name: "SAVE ADDRESS")
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget textField({required String label}){
    return TextField(
      cursorHeight: 30.h,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        focusColor: Colors.black54,
        focusedBorder: const UnderlineInputBorder(),
        labelText: label,
        labelStyle: GoogleFonts.rubik(
            fontSize: 17.sp,
            fontWeight: FontWeight.w300,
            color: Colors.black54
        ),
      ),
    );
  }
}
