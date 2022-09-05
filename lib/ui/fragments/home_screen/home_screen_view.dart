import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/popular_items/popular_items.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/widgets/catagories_list.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/widgets/first_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);


  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Text(
                    "Het Thummar",
                    style: GoogleFonts.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)
                    ),
                  ),
                ),
                Text("YOUR ADDRESS",style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400, color: const Color(0xffB3BCCA)),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F4F9),
                        borderRadius: BorderRadius.circular(6.r)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: TextField(
                        cursorHeight: 27.h,
                        cursorColor: const Color(0xffB3BCCA),
                        decoration: InputDecoration(
                          hintText: "Any grocery search here",
                          hintStyle: GoogleFonts.poppins(color: const Color(0xffB3BCCA), fontWeight: FontWeight.w400, fontSize: 12.sp),
                          suffixIcon: Icon(CupertinoIcons.search, size:22.sp,color: const Color(0xffB3BCCA),),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 190.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          controller: _controller,
                          children: const [
                            FirstList(
                                caption: "10% off on your \nfirst purchase.",
                                image: "images/first_list_1.jpeg"),
                            FirstList(
                                caption: "20% off on your \nsecond purchase.",
                                image: "images/first_list_2.jpeg"),
                            FirstList(
                                caption: "30% off on your \nthird purchase.",
                                image: "images/first_list_3.jpeg"),
                            FirstList(
                                caption: "40% off on your \nfourth purchase.",
                                image: "images/first_list_4.jpeg"),
                            FirstList(
                                caption: "40% off on your \nfourth purchase.",
                                image: "images/first_list_2.jpeg"),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 4,
                            effect: WormEffect(
                                spacing: 5,
                                activeDotColor: Colors.green,
                                dotHeight: 5.h,
                                dotWidth: 5.h,
                                dotColor: Colors.grey.shade400
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Catagories",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.sp,
                                  color: Colors.black87
                              ),
                            ),
                            GestureDetector(
                              onTap: ()=> Navigator.pushNamed(context, "catagory"),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.r),
                                  color : const Color(0xffF2F4F9),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 12.w),
                                    child: Text("View All",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Colors.black54
                                        ),
                                      ),
                                  ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              CatagoriesList(
                                  name: "Vegetables",
                                  image: "images/vegetables.png",
                                  color: Color(0x506CC51D)
                              ),
                              CatagoriesList(
                                  name: "Fruits",
                                  image: "images/fruits.png",
                                  color: Color(0x50C5AB1D)
                              ),
                              CatagoriesList(
                                  name: "Dairy \nProducts",
                                  image: "images/milk.png",
                                  color: Color(0x50C2DBAB)
                              ),
                              CatagoriesList(
                                  name: "Grocery",
                                  image: "images/catagory_grocery.png",
                                  color: Color(0x50C5BF1D)
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15.h, top: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular Items",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: Colors.black87
                                ),
                              ),
                            ],
                          ),
                        ),
                      const PopularItemsList(
                          name: "Potato",
                          price: "50.0",
                          image: "images/potato.png"
                      ),
                      const PopularItemsList(
                          name: "Broccoli",
                          price: "40.0",
                          image: "images/broccoli.png"
                      ),
                      const PopularItemsList(
                          name: "Banana",
                          price: "35.0",
                          image: "images/banana.png"
                      ),
                      const PopularItemsList(
                          name: "Banana",
                          price: "20.0",
                          image: "images/broccoli.png"
                      ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
