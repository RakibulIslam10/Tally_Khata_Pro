import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class CashboxDetails extends StatelessWidget {
  const CashboxDetails({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidthHalf = screenSize.width / 2.1;

    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.peach,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
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
                _buildInfoRow(AllStrings.todayCollect, '0'),
                _buildInfoRow(AllStrings.todayPaid, '0'),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidthHalf,
          top: 90,
          child: Container(height: 20, width: 2, color: Colors.grey),
        ),
        Positioned(
          left: screenWidthHalf,
          top: 35,
          child: Container(height: 20, width: 2, color: Colors.grey),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildColumn(AllStrings.todaySell, '0'),
              _buildColumn(AllStrings.presentCash, '0'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: AppColors.grayText),
        ),
        const SizedBox(width: 5),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: AppColors.grayText),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
