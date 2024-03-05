import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_m/view/cart/cart.dart';
import 'package:h_m/view/categories/categories.dart';
import 'package:h_m/view/favourites/favourites.dart';
import 'package:h_m/view/home/home.dart';
import 'package:h_m/view/home/home_producs.dart';
import 'package:h_m/view/onboard/onboard.dart';
import 'package:h_m/view/password/forget_password.dart';
import 'package:h_m/view/password/reset_password.dart';
import 'package:h_m/view/password/verify_code.dart';
import 'package:h_m/view/profile/profile.dart';
import 'package:h_m/view/sign_in/sign_in.dart';
import 'package:h_m/view/sign_up/sign_up.dart';
import 'package:h_m/view/splash/splash_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'H & M',
      theme: AppTheme.lightTheme,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/onboard", page: () => const OnBoard()),
        GetPage(name: "/signin", page: () => const SignIn()),
        GetPage(name: "/signup", page: () => const SignUp()),
        GetPage(name: "/forgetpassword", page: () => const ForgetPassword()),
        GetPage(name: "/verifypassword", page: () => VerifyCodePassword()),
        GetPage(name: "/resetpassword", page: () => const ResetPassword()),
//
        GetPage(name: "/homepage", page: () => const HomePage()),
// All this pages below comes under the bottom app bar
        GetPage(name: "/homeproducts", page: () => const HomeProducts()),
        GetPage(name: "/categories", page: () => const Categories()),
        GetPage(name: "/favourites", page: () => const Favourites()),
        GetPage(name: "/cart", page: () => const Cart()),
        GetPage(name: "/profile", page: () => const Profile()),
////
      ],
    );
  }
}
