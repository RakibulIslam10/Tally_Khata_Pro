import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';
 allDueAndLoanBox(){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: AppColors.secondaryColor,
        height: 75,
        width: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AllStrings.allDue,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  "২৫০",
                  style: TextStyle(
                      color: AppColors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text("|",style: TextStyle(fontSize: 22),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AllStrings.allLoan,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  "২২০",
                  style: TextStyle(
                      color: AppColors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}