import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:h_m/model/onboard_model.dart';
import 'package:h_m/utils/app_images.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/view/sign_in/sign_in.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final PageController _pageController = PageController();

  int _activePage = 0;

  void onNextPage() {
    if (_activePage < myOnBoard.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
    } else {
      Get.offAll(() => const SignIn());
    }
  }

  void onpreviousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: PageView.builder(
          controller: _pageController,
          itemCount: myOnBoard.length,
          padEnds: true,
          onPageChanged: (int page) {
            setState(() {
              _activePage = page;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: h,
              width: w,
              decoration: const BoxDecoration(color: MyColors.appLight2),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: h * 0.32,
                      width: w,
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF).withOpacity(0.75),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                AppImages.onBoardLogo,
                                height: 40,
                              ),
                              const SizedBox(width: 5),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Contains a Variety of \n ${myOnBoard[index].type}",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          Text(
                            myOnBoard[index].content,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Color(0xff7F7778),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              index != 0
                                  ? GestureDetector(
                                      onTap: onpreviousPage,
                                      child: Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: MyColors.appPrimary)),
                                          child: const Icon(
                                            Icons.arrow_back,
                                            size: 30,
                                            color: MyColors.appPrimary,
                                          )),
                                    )
                                  : const SizedBox(
                                      height: 60,
                                      width: 60,
                                    ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: _buildIndicator()),
                              GestureDetector(
                                onTap: onNextPage,
                                child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: MyColors.appPrimary,
                                        border: Border.all(
                                            color: MyColors.appPrimary)),
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  List<Widget> _buildIndicator() {
    final indicators = <Widget>[];

    for (var i = 0; i < myOnBoard.length; i++) {
      if (_activePage == i) {
        indicators.add(_indicatorsTrue());
      } else {
        indicators.add(_indicatorsFalse());
      }
    }
    return indicators;
  }

  Widget _indicatorsTrue() {
    final String color;
    if (_activePage == 0) {
      color = '#CC061D';
    } else {
      color = '#CC061D';
    }

    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 12,
      width: 12,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: hexToColor(color),
      ),
    );
  }

  Widget _indicatorsFalse() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 8,
      width: 8,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey,
      ),
    );
  }
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
