import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/widgets/fields.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F8),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Het Thummar", style: GoogleFonts.rubik(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Colors.black),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Text("+91-1234567890", style: GoogleFonts.rubik(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),
            ),
          ],
        ),
        actions: [
          Center(
              child: Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Text("EDIT",style: GoogleFonts.rubik(fontSize: 12.sp,fontWeight: FontWeight.w400, color: Colors.orange.shade800),),
              ))],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sm),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(width: 1.w, color: const Color(0xffE6E6E6))
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, "select_address"),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
                      child: const Fields(
                        name: "Saved Address",
                        icon: Icon(Icons.location_on_outlined, color: Colors.white,),
                      ),
                    ),
                  ),
                  Container(height: 1.h,width: double.maxFinite,color: Colors.grey[100],),
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, "order"),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8.h),
                      child: const Fields(
                        name: "Your Orders",
                        icon: Icon(CupertinoIcons.doc_append, color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(width: 1.w, color: const Color(0xffE6E6E6))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
                      child: const Fields(
                        name: "Share App",
                        icon: Icon(Icons.share, color: Colors.white,),
                      ),
                    ),
                    Container(height: 1.h,width: double.maxFinite,color: Colors.grey[100],),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: const Fields(
                        name: "Rate Us",
                        icon: Icon(Icons.star_rounded, color: Colors.white,),
                      ),
                    ),
                    Container(height: 1.h, width: double.maxFinite,color: Colors.grey[100],),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 8.h),
                      child: const Fields(
                        name: "Help",
                        icon: Icon(CupertinoIcons.question_circle, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap:()=> Navigator.popAndPushNamed(context, "first"),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(width: 1.w, color: const Color(0xffE6E6E6),),
                  color: Colors.white
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.sm),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF3F5F8),
                              borderRadius: BorderRadius.circular(8.r)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.sm),
                            child: const Icon(Icons.exit_to_app,),
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Text(
                          "Logout",
                          style: GoogleFonts.rubik(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey.shade800
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}