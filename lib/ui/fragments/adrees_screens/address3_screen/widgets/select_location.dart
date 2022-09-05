import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectLocation extends StatefulWidget {
   const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  final List location =[
    ["HOME",true],
    ["WORK",false],
    ["OFFICE",false]
  ];

  void locationSelected(int index){
    setState(() {
      for(int i=0; i< location.length; i++){
        location[i][1] = false;
      }
        location[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: SizedBox(
        height: 40.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: location.length,
          itemBuilder: (BuildContext context, int index) {
          return Location(
              name: location[index][0],
              isSelected: location[index][1],
              onTap: () {
                locationSelected(index);
              }
          );
          },
        ),
      ),
    );
  }
}

class Location extends StatelessWidget {

  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const Location({
    super.key, required this.name,
    required this.isSelected,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: isSelected ? Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5.r)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
              child: Center(
                child: Text(
                  name,
                  style: GoogleFonts.rubik(
                      fontSize: 12.sp,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ):
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
              border: Border.all(color: Colors.black38, width: 1.w)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
              child: Center(
                child: Text(
                  name,
                  style: GoogleFonts.rubik(
                      fontSize: 12.sp,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ) ,
        ),
      );
  }
}
