import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/utils/fonts.dart';
import 'package:h_m/view/password/reset_password.dart';
import 'package:h_m/widgets/large_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyCodePassword extends StatelessWidget {
  VerifyCodePassword({super.key});
  final OtpFieldController otpController = OtpFieldController();
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
            children: [
              const SizedBox(height: 50),
              const Text(
                "Verify Code",
                style: TextStyle(
                    fontSize: Appfonts.heading5,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Please enter the code we just sent to email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Appfonts.body2,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "ras.flutterdev9@gmail.com",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: MyColors.appPrimary,
                    decorationThickness: 1.5,
                    fontSize: Appfonts.caption,
                    fontWeight: FontWeight.w600,
                    color: MyColors.appPrimary),
              ),
              const SizedBox(height: 60),
              OTPTextField(
                  controller: otpController,
                  length: 4,
                  width: MediaQuery.of(context).size.width * 0.8,
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  fieldWidth: 60,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: const TextStyle(fontSize: 17),
                  onChanged: (pin) {
                    print("Changed: $pin");
                  },
                  onCompleted: (pin) {
                    print("Completed: $pin");
                  }),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "Didn't receive OTP ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: Appfonts.body2,
                      color: MyColors.appGrey,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Resend Code In : ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors.appPrimary,
                          decorationThickness: 1.5,
                          fontSize: Appfonts.caption,
                          fontWeight: FontWeight.w600,
                          color: MyColors.appPrimary,
                        ),
                      ),
                    )),
                    const TextSpan(
                      text: "00:56",
                      style: TextStyle(
                        fontSize: Appfonts.caption,
                        fontWeight: FontWeight.w400,
                        color: MyColors.appGrey,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 40),
              MainButton(
                buttonName: "Verify",
                onTap: () => Get.to(() => const ResetPassword()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
