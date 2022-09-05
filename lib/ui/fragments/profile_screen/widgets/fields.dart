// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';

class Fields extends StatelessWidget {

  final String name;
  final Icon icon;
  const Fields({super.key, required this.name, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sm),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8.r)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.sm),
                      child: icon,
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: Center(
                    child: Text(
                      name,
                      style: GoogleFonts.rubik(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueGrey.shade800
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Icon(CupertinoIcons.forward,color: Colors.blueGrey.shade300,)
          ],
        ),
      ),
    );
  }
}

