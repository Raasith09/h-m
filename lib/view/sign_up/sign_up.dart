import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/app_images.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/utils/fonts.dart';
import 'package:h_m/view/sign_in/sign_in.dart';
import 'package:h_m/widgets/large_button.dart';
import 'package:h_m/widgets/other_signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isvisible = true;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  AppImages.onBoardLogo,
                  height: 120,
                  width: 120,
                ),
              ),
              const Center(
                child: Text(
                  "Fill your information below or register\nwith your social account",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: Appfonts.caption, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Name",
                style: TextStyle(
                    fontSize: Appfonts.caption,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'Mohamed Raasith',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontSize: Appfonts.caption),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                  ),
                  style: const TextStyle(
                      fontSize: Appfonts.body2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Email ID",
                style: TextStyle(
                    fontSize: Appfonts.caption,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 48,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: 'examplemail@hotmail.com',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontSize: Appfonts.caption),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                  ),
                  style: const TextStyle(
                      fontSize: Appfonts.body2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Password",
                style: TextStyle(
                    fontSize: Appfonts.caption,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 48,
                child: TextFormField(
                  obscureText: _isvisible,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_isvisible) {
                            _isvisible = false;
                          } else {
                            _isvisible = true;
                          }
                        });
                      },
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: '********',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontSize: Appfonts.caption),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                  ),
                  style: const TextStyle(
                      fontSize: Appfonts.body2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    width: 25,
                    child: Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        activeColor: MyColors.appPrimary,
                        value: checkBoxValue,
                        onChanged: (s) {
                          setState(() {
                            checkBoxValue = s!;
                          });
                        }),
                  ),
                  const SizedBox(width: 5),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      const TextSpan(
                        text: "Agree with  ",
                        style: TextStyle(
                            fontSize: Appfonts.caption,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      WidgetSpan(
                          child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Terms & Condition",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: MyColors.appPrimary,
                            decorationThickness: 1.5,
                            fontSize: Appfonts.caption,
                            fontWeight: FontWeight.w600,
                            color: MyColors.appPrimary,
                          ),
                        ),
                      ))
                    ]),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const MainButton(buttonName: "Sign Up"),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 1,
                      color: Colors.grey,
                      child: const Divider(),
                    ),
                    const Text("or sign in with",
                        style: TextStyle(
                            fontSize: Appfonts.caption,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                    Container(
                      width: 100,
                      height: 1,
                      color: Colors.grey,
                      child: const Divider(),
                    ),
                  ],
                ),
              ),
              Center(child: OtherSignIn(
                onTap: (int index) {
                  print(index);
                },
              )),
              const SizedBox(height: 20),
              Center(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: [
                    const TextSpan(
                      text: "Already have an account ?  ",
                      style: TextStyle(
                          fontSize: Appfonts.caption,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () => Get.to(() => const SignIn()),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors.appPrimary,
                          decorationThickness: 1.5,
                          fontSize: Appfonts.caption,
                          fontWeight: FontWeight.w600,
                          color: MyColors.appPrimary,
                        ),
                      ),
                    ))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
