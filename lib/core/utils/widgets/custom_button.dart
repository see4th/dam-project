import 'package:new_app/core/utils/constants.dart';
import 'package:new_app/core/utils/suze_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.textButton, this.onTap});
  final String textButton;
  final VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: MainColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
