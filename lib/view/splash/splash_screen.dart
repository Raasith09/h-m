import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/app_images.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/view/onboard/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getIntoOnboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 300,
          top: -60,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: MyColors.appPrimary, width: 1.5)),
          ),
        ),
        Positioned(
          bottom: -50,
          left: -100,
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: MyColors.appPrimary, width: 1.5)),
          ),
        ),
//Splash-logo :
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Image.asset(
              AppImages.splashLogo,
              height: 250,
              width: 250,
              fit: BoxFit.contain,
              color: MyColors.appPrimary,
            ),
          ),
        )
      ],
    ));
  }

  void getIntoOnboard() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const OnBoard());
    });
  }
}
