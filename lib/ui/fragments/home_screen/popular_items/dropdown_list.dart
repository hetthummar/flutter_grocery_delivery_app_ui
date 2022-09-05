import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DropList extends StatefulWidget {
  const DropList({Key? key}) : super(key: key);

  @override
  State<DropList> createState() => _DropListState();
}

class _DropListState extends State<DropList> {
  final items = ["500 GM","1 KG","2 KG","3 KG"];
  String? value;
  String? selectedItem = "1 KG ";
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return items.map((str) => PopupMenuItem(
          value: str,
          child: Text(str),
        ),).toList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:[
          Text(selectedItem!, style: GoogleFonts.poppins(color: Colors.black, fontSize: 12.sp),),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 3.h),
            child: Icon(CupertinoIcons.chevron_down, color: Colors.black,size: 12.sp,),
          ),
        ],
      ),
      onSelected: (value) {
        setState(() {
          selectedItem = value;
        });
      },
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item){
    return DropdownMenuItem(
        child: Text(
            item,
          style: GoogleFonts.rubik(
            fontSize: 12.sp,
            color: Colors.black54,
            fontWeight: FontWeight.w400
          ),
        )
    );
  }
}
