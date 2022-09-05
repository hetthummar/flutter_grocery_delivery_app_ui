import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreenView extends StatefulWidget {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(12.sm),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.white,
                    border: Border.all(color: const Color(0xffB3BCCA), width: 1.w)
                  ),
                  child: TextField(
                    cursorHeight: 27.h,
                    cursorColor: const Color(0xffB3BCCA),
                    decoration: InputDecoration(
                      hintText: "Search for grocery",
                      hintStyle: GoogleFonts.poppins(color: Colors.black38, fontWeight: FontWeight.w400, fontSize: 15.sp),
                      suffixIcon: const Icon(CupertinoIcons.multiply,color: Colors.black38,),
                      prefixIcon: const Icon(CupertinoIcons.back,color: Colors.black38,),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 13.h),
                  ),
                  ),
                ),
              ),
            ),
            Container(height: 2.h, width: double.maxFinite,color: const Color(0xffF2F4F9) ,),
            Padding(
              padding: EdgeInsets.all(10.sm),
              child: Text("Recent Searchs", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w400),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Items(name: 'fresh apricots',),
                  Items(name: 'fresh apricots',),
                  Items(name: 'fresh apricots',),
                ],
              ),
            ),
            // SizedBox(
            //   height: 40.h,
            //   child: GridView.count(
            //     primary: false,
            //     padding: EdgeInsets.symmetric(horizontal: 10.w),
            //     mainAxisSpacing: 5,
            //     crossAxisSpacing: 8,
            //     crossAxisCount: 3,
            //   children: const [
            //     Items(name: 'fresh apricots',),
            //     Items(name: 'fresh apricots',),
            //     Items(name: 'fresh apricots',),
            //   ],),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Container(height: 6.h, width: double.maxFinite,color: const Color(0xffF2F4F9) ,),
            ),
            Padding(
              padding: EdgeInsets.all(10.sm),
              child: Text("Favourite Searchs", style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w400),),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                        Items(name: 'fresh apricots',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {

  final String name;
  const Items({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: const Color(0xffF2F4F9)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
        child: Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black38
          ),
        ),
      ),
    );
  }
}
