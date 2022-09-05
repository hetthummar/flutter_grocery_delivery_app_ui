import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/dairy_products/dairy_products.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/fruits/fruits.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/widgets/vegetables/vegetables.dart';

class ItemsScreenView extends StatefulWidget {
  const ItemsScreenView({Key? key}) : super(key: key);

  @override
  State<ItemsScreenView> createState() => _ItemsScreenViewState();
}

class _ItemsScreenViewState extends State<ItemsScreenView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffF3F5F8),
          elevation: 0,
          actions: [
            Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(CupertinoIcons.search, color: Colors.black87,),
          )],
          title: const Droplist(),
          bottom: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor:const Color(0xff3B3B43),
            indicatorColor: Colors.green,
            indicatorPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w) ,
            tabs: [
              Tab(
                child: Text(
                  "Vegetables",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Fruits",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Dairy Products",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: const TabBarView(
              children: [
                Vegetables(),
                Fruits(),
                DairyProducts(),
              ]
          ),
        ),
      ),
    );
  }
}

class Droplist extends StatefulWidget {
  const Droplist({Key? key}) : super(key: key);

  @override
  State<Droplist> createState() => _DroplistState();
}

class _DroplistState extends State<Droplist> {

  final textList = ["Vegetables","Fruits","Dairy Products"];
  String? value;
  String? _currentItemSelected = "Vegetables";

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return textList.map((str) => PopupMenuItem(
            value: str,
            child: Text(str),
          ),).toList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_currentItemSelected!, style: GoogleFonts.poppins(color: Colors.black, fontSize: 17.sp),),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Icon(CupertinoIcons.chevron_down, color: Colors.black,size: 17.sp,),
          ),
        ],
      ),
      onSelected: (value) {
        setState(() {
          _currentItemSelected = value;
        });
      },
    );
  }
}
