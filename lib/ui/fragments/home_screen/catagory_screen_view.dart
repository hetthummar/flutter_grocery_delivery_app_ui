import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/home_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/widgets/catagories_list.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

class CatagoryScreenView extends StatelessWidget {
  const CatagoryScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pushAndRemoveUntil(
              context,
            MaterialPageRoute(builder: (BuildContext context){
              return const MainScreenView();
            }),(route)=> false
          ),
          child: const Icon(CupertinoIcons.back, color: Colors.black,),
        ),
        title: Text("Catagory",style: GoogleFonts.rubik(fontSize: 20.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 8.h, width: double.maxFinite,color: const Color(0xffF2F4F9) ,),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 10.h),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const CatagoriesList(
                          name: "Vegetables",
                          image: "images/vegetables.png",
                          color: Color(0x506CC51D)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const CatagoriesList(
                          name: "Fruits",
                          image: "images/fruits.png",
                          color: const Color(0x50C5AB1D)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const CatagoriesList(
                          name: "Dairy \nProducts",
                          image: "images/milk.png",
                          color: Color(0x50C2DBAB)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const CatagoriesList(
                          name: "Grocery",
                          image: "images/catagory_grocery.png",
                          color: const Color(0x50C5BF1D)
                      ),
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
}
