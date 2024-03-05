import 'package:flutter/material.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/utils/fonts.dart';

class MainButton extends StatefulWidget {
  const MainButton({super.key, required this.buttonName, this.onTap});
  final String buttonName;
  final VoidCallback? onTap;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: MyColors.appPrimary,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            widget.buttonName,
            style: const TextStyle(
                fontSize: Appfonts.subtitle2,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
