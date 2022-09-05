import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocerry_delivery/ui/fragments/adrees_screens/address1_screen/address_1_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/adrees_screens/address2_screen/address_2_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/adrees_screens/address3_screen/address_3_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/cart_screen/apply_coupon_screen/apply_coupon_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/cart_screen/cart_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/catagory_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/home_screen/home_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/items_screen/items_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/login_screens/login_name_screen/login_name_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/login_screens/login_screen/login_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/login_screens/verification_screen/verification_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/first_screen_view/first_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/fourth_screen_view/fourth_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/second_screen_view/seocnd_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/onboarding_screen/third_screen_view/third_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/profile_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/select_address_screen/select_address_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/your_order_screen/order_details_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/profile_screen/your_order_screen/order_screen_view.dart';
import 'package:grocerry_delivery/ui/fragments/search_screen/search_screen_view.dart';
import 'package:grocerry_delivery/ui/main_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size(375,812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const MainScreenView(),

          initialRoute: "main",
          routes: {
            "main"          :  (context) => const MainScreenView(),
            "first"         :  (context) => const FirstScreenView(),
            "second"        :  (context) => const SecondScreenView(),
            "third"         :  (context) => const ThirdScreenView(),
            "fourth"        :  (context) => const FourthScreenView(),
            "login"         :  (context) => const LoginScreenView(),
            "login2"        :  (context) => const VerificationScreenView(),
            "login3"        :  (context) => const LoginNameScreenView(),
            "address1"      :  (context) => const Address1ScreenView(),
            "address2"      :  (context) => const Address2ScreenView(),
            "address3"      :  (context) => const Address3ScreenView(),
            "home"          :  (context) => const HomeScreenView(),
            "profile"       :  (context) => const ProfileScreenView(),
            "catagory"      :  (context) => const CatagoryScreenView(),
            "search"        :  (context) => const SearchScreenView(),
            "items"         :  (context) => const ItemsScreenView(),
            "cart"          :  (context) => const CartScreenView(),
            "coupon"        :  (context) => const ApplyCouponScreenView(),
            "select_address":  (context) => const SelectAddressScreenView(),
            "order"         :  (context) => const OrderScreenView(),
            "order_details" :  (context) => const OrderDetailsScreenView(),
          },
        );
      }
    );
  }
}


