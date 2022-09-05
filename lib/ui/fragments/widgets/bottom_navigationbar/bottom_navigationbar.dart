import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: BottomNavigationBar(
        showUnselectedLabels: false,
        elevation: 10,
        currentIndex: _currentindex,
        onTap: (index){
          setState((){
            _currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.rubik(
          fontSize: 14.sp,
          color: Colors.black
        ),
        showSelectedLabels: true,

        items: const[
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house, color: Colors.black,),
                label: "Home",
                activeIcon: Icon(CupertinoIcons.house_fill, color: Colors.lightGreen,)
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.archivebox,color: Colors.black),
                label: "Items",
                activeIcon: Icon(CupertinoIcons.archivebox_fill, color: Colors.lightGreen,)
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search,color: Colors.black),
                label: "Search",
                activeIcon: Icon(CupertinoIcons.search_circle_fill, color: Colors.lightGreen,)
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart, color: Colors.black),
                label: "Cart",
                activeIcon: Icon(CupertinoIcons.cart_fill, color: Colors.lightGreen,)
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person,color: Colors.black),
                label: "Profile",
                activeIcon: Icon(Icons.person, color: Colors.lightGreen,)
            ),
          ],
      ),
    );
  }
}
