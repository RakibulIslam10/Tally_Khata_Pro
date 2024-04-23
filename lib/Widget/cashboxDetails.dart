import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class CashboxDetails extends StatelessWidget {
  const CashboxDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    final screenWidthHalf = screenSize / 2.1;

    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColors.peach,
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 80,
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.lightPeach,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Added this line
                  children: [
                    Text(
                      AllStrings.todayCollect,
                      style: TextStyle(
                          fontSize: 16, color: AppColors.grayText),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Added this line
                  children: [
                    Text(
                      AllStrings.todayPaid,
                      style: TextStyle(
                          fontSize: 16, color: AppColors.grayText),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            left: screenWidthHalf,
            top: 90,
            child: Container(height: 20, width: 2, color: Colors.grey)),
        Positioned(
            left: screenWidthHalf,
            top: 35,
            child: Container(height: 20, width: 2, color: Colors.grey)),
        Positioned(
          top: 20,
          left: 45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Added this line
            children: [
              Text(
                AllStrings.todaySell,
                style: TextStyle(fontSize: 16, color: AppColors.grayText),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Added this line
            children: [
              Text(
                AllStrings.presentCash,
                style: TextStyle(fontSize: 16, color: AppColors.grayText),
              ),
              Text(
                '0',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
