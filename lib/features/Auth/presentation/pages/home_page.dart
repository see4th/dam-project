import 'package:flutter/material.dart';
import 'package:new_app/core/utils/constants.dart';
import 'package:new_app/core/utils/suze_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 70),
              child: Row(
                children: [
                  Icon(
                    Icons.menu_rounded,
                    size: 30,
                    color: IconColor,
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: SizeConfig.defaultSize! * 5,
                    height: SizeConfig.defaultSize! * 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Discover",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                color: Color.fromRGBO(46, 46, 46, 1),
                fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            
          )
        ],
      ),
    );
  }
}
