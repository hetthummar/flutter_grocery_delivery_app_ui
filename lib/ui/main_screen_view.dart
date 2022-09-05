import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocerry_delivery/ui/fragments/cart_screen/cart_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/home_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/items_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/profile_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/search_screen/search_screen_view.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {

  int _currentIndex = 0;
  List screens = [
    const HomeScreenView(),
    const ItemsScreenView(),
    const SearchScreenView(),
    const CartScreenView(),
    const ProfileScreenView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: DoubleBackToCloseApp(
        child: screens[_currentIndex],
        snackBar: const SnackBar(
          content: Text('Tap again to exit app'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        currentIndex: _currentIndex,
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.lightGreen,
        selectedLabelStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color: Colors.black54),
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house, color: Colors.black,size: 20.sp,),
              label: "HOME",
              activeIcon: Icon(Icons.home, color: Colors.lightGreen,size: 24.sp,)
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.archivebox,color: Colors.black,size: 20.sp,),
              label: "ITEMS",
              activeIcon: Icon(CupertinoIcons.archivebox_fill, color: Colors.lightGreen,size: 24.sp,)
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search,color: Colors.black,size: 20.sp),
              label: "SEARCH",
              activeIcon: Icon(CupertinoIcons.search, color: Colors.lightGreen,size: 24.sp,)
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart, color: Colors.black,size: 20.sp),
              label: "CART",
              activeIcon: Icon(CupertinoIcons.cart_fill, color: Colors.lightGreen,size: 24.sp,)
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person,color: Colors.black,size: 20.sp),
              label: "PROFILE",
              activeIcon: Icon(Icons.person, color: Colors.lightGreen,size: 24.sp,)
          ),
        ],
      ),
    );
  }
}