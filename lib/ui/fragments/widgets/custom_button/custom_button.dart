import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String name;

  const CustomButton({super.key,
    required this.onPressed,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: const Color(0x806CC51D),offset: const Offset(0, 10), blurRadius: 20.r)
          ]
      ),
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Text(
            name,
            style: GoogleFonts.rubik(fontSize: 14.sp,color: Colors.white),),
        ),
      ),
    );
  }
}
