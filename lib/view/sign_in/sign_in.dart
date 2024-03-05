import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/app_images.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/utils/fonts.dart';
import 'package:h_m/view/home/home.dart';
import 'package:h_m/view/password/forget_password.dart';
import 'package:h_m/view/sign_up/sign_up.dart';
import 'package:h_m/widgets/large_button.dart';
import 'package:h_m/widgets/other_signin.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isvisible = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: SvgPicture.asset(
                    AppImages.onBoardLogo,
                    height: 150,
                    width: 150,
                  ),
                ),
                const Center(
                  child: Text(
                    "Hi!, Welcome back, you have been so missed",
                    style: TextStyle(
                        fontSize: Appfonts.caption, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 25),
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
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Get.to(() => const ForgetPassword()),
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors.appPrimary,
                          decorationThickness: 1.5,
                          fontSize: Appfonts.caption,
                          fontWeight: FontWeight.w600,
                          color: MyColors.appPrimary),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                MainButton(
                  buttonName: "Sign In",
                  onTap: () => Get.to(() => const HomePage()),
                ),
                const SizedBox(height: 40),
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
                        text: "Don't have an account ?  ",
                        style: TextStyle(
                            fontSize: Appfonts.caption,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      WidgetSpan(
                          child: GestureDetector(
                        onTap: () => Get.to(() => const SignUp()),
                        child: const Text(
                          "Sign Up",
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
      ),
    );
  }

//For the Later Use
  Widget myTextField(
      String name, TextEditingController controller, String hintText) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        controller: controller,
        obscureText: _isvisible,
        validator: (value) {
          return null;
        },
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
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Colors.grey, fontSize: Appfonts.caption),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        ),
        style: const TextStyle(
            fontSize: Appfonts.body2,
            color: Colors.black,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
