import 'package:flutter/material.dart';
import 'package:new_app/core/utils/suze_config.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subtitle, this.image});

  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize!*15,),
        SizedBox(
          height: SizeConfig.defaultSize!*35,
          child: Image.asset(image!)),
        SizedBox(height: SizeConfig.defaultSize!*2,),

        Text(title!,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              color: Color.fromARGB(198, 31, 31, 31),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: SizeConfig.defaultSize!*2,),

        Text(subtitle!,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Color(0xff78787c),
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center)
      ],
    );
  }
}
