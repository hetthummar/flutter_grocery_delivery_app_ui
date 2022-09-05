// ignore_for_file: avoid_types_as_parameter_names

import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/select_address_screen/widgets/address.dart';

class SelectAddressScreenView extends StatefulWidget {
  const SelectAddressScreenView({Key? key}) : super(key: key);

  @override
  State<SelectAddressScreenView> createState() => _SelectAddressScreenViewState();
}

class _SelectAddressScreenViewState extends State<SelectAddressScreenView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: EdgeInsets.all(18.sm),
            child: const Icon(CupertinoIcons.back,color: Colors.black),
          ),
        ),
        centerTitle: true,
        title: Text("Select Address",style: GoogleFonts.poppins(fontSize: 18.sp, color: const Color(0xff3B3B43), fontWeight: FontWeight.w400)
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 5.h, left: 15.w, right: 15.w),
                child: Stack(
                  children: [
                    Container(
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
                                      "HOME",
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
                    Positioned(
                      right: 0.w,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffEDF8E4),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15.r))
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
                              child: Text("DEFAULT",
                                style: GoogleFonts.poppins(fontSize: 11.sp,fontWeight: FontWeight.w700, color: Colors.green),),
                            ),
                          ),)),
                  ],
                ),
              ),
              const Address(label: "OFFICE",),
              const Address(label: "OTHER",),
            ],
          ),
        ),
      )
    );
  }
}
