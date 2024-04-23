import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class CashboxDetails extends StatelessWidget {
  const CashboxDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          decoration:const BoxDecoration(
            color: AppColors.peach,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
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
              Container(height: 20, width: 2, color: Colors.grey),
              const Column(
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
            ],
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
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
                  Text(AllStrings.todayCollect,
                    style: TextStyle(fontSize: 16, color: AppColors.grayText),
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
              Container(height: 20, width: 2, color: Colors.grey),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // Added this line
                children: [
                  Text(AllStrings.todayPaid,
                    style: TextStyle(fontSize: 16, color: AppColors.grayText),
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
      ],
    );
  }
}
