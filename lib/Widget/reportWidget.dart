import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class ReportWidget extends StatelessWidget {
  const ReportWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.peach,
                borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.only(top: 5.0,right: 8.0,bottom: 5.0,left: 8.0),
              child: Row(
                children: [Icon(Icons.report_outlined), Text(AllStrings.report)],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.lightGray,
                    borderRadius: BorderRadius.circular(50)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5.0,right: 8.0,bottom: 5.0,left: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.connecting_airports_sharp),
                      SizedBox(width: 8),
                      Text(AllStrings.cashBoxMatched)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.lightGray,
                    borderRadius: BorderRadius.circular(50)),
                child:const Padding(
                    padding:  EdgeInsets.all(5.0),
                    child: Icon(Icons.remove_red_eye_outlined)),
              ),
            ],
          )
        ],
      ),
    );
  }
}