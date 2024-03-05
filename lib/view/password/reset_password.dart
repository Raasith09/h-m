import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/fonts.dart';
import 'package:h_m/view/sign_in/sign_in.dart';
import 'package:h_m/widgets/large_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                      fontSize: Appfonts.heading5,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Please enter your new password and confirm\n the password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Appfonts.body2,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "New Password",
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
                    hintText: '**********',
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
                "Confirm Password",
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
                    hintText: '**********',
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
              MainButton(
                buttonName: "Create New Password",
                onTap: () => Get.offAll(() => const SignIn()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
