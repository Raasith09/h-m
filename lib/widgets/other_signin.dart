import 'package:flutter/material.dart';

class OtherSignIn extends StatelessWidget {
  final void Function(int) onTap; // Define a callback function

  OtherSignIn({super.key, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: icons.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Image.asset(
                  icons[index],
                  height: 30,
                  width: 30,
                ),
              ),
            );
          }),
    );
  }

  final List<String> icons = [
    "icons/apple_login.png",
    "icons/google_login.png",
    "icons/facebook_login.png",
  ];
}
