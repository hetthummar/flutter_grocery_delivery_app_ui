// ignore_for_file: avoid_types_as_parameter_names

import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {

  final String label;
  const Address({super.key, required this.label,});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address>{
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 15.w, right: 15.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            iconPadding: EdgeInsets.only(top: 40.h, right: 15.w),
            collapseIcon: CupertinoIcons.chevron_up_circle,
            expandIcon: CupertinoIcons.chevron_down_circle,
            iconColor: Colors.green,
            iconSize: 26.sp,
          ),
          header: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 15.h),
                  child: CircleAvatar(
                    radius: 28.r,
                    backgroundColor: const Color(0xffEDF8E4),
                    child: const Icon(Icons.location_on_outlined, color: Color(0xff4CAF50)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.label,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 14.sp),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text("48,ishwer krupa soc, Nana \nVarachha, \nSurat", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 12.sp, color: Colors.black54),),),
                      Text("EDIT", style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 11.sp, color: Colors.green),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          collapsed: const CollapsedList(),
          expanded: const ExpandedList(),
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {

  final String label;

  const Textfield({super.key, required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0x20B3BCCA),
            borderRadius: BorderRadius.circular(6.r)
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: TextField(
            cursorHeight: 22.h,
            cursorColor: const Color(0xffB3BCCA),
            decoration: InputDecoration(
              hintText: label,
              hintStyle: GoogleFonts.poppins(color: Colors.blueGrey.shade300, fontWeight: FontWeight.w400, fontSize: 12.sp),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}


class CollapsedList extends StatefulWidget {
  const CollapsedList({Key? key}) : super(key: key);

  @override
  State<CollapsedList> createState() => _CollapsedListState();
}

class _CollapsedListState extends State<CollapsedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.h,
    );
  }
}

class ExpandedList extends StatefulWidget {
  const ExpandedList({Key? key}) : super(key: key);

  @override
  State<ExpandedList> createState() => _ExpandedListState();
}

class _ExpandedListState extends State<ExpandedList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Textfield(label: "Your Location"),
          const Textfield(label: "Street Number & Name"),
          const Textfield(label: "Landmark"),
          Padding(
            padding: EdgeInsets.only(top :10.h, bottom: 10.h, left: 200.w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 28.w),
                  child: Text("DELETE",style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.red),),
                ),
                Text("SAVE",style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.green),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}