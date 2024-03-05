import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/fonts.dart';
import 'package:h_m/view/password/verify_code.dart';
import 'package:h_m/widgets/large_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "Forget Password",
                style: TextStyle(
                    fontSize: Appfonts.heading5,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 25),
            const Center(
              child: Text(
                "Please enter your registered email or mobile\nto reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Appfonts.body2,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Email | Mobile Number",
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
            const SizedBox(height: 60),
            MainButton(
              buttonName: "Send",
              onTap: () => Get.to(() => VerifyCodePassword()),
            )
          ],
        ),
      ),
    );
  }
}
