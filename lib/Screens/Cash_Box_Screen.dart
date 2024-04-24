import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/All_Image.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';
import 'package:talikhatapro/Widget/bodyList.dart';
import 'package:talikhatapro/Widget/cashboxDetails.dart';
import 'package:talikhatapro/Widget/reportWidget.dart';

class CashBoxScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          "ভাই ভাই স্টোর",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        elevation: 2,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(Allimage.inbox),
                  ),
                  const Text(AllStrings.inbox),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset(Allimage.supportIcon),
                  ),
                  const Text(AllStrings.help),
                ],
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_outlined,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              CashboxDetails(),
              ReportWidget(),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                color: AppColors.lightGray,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AllStrings.dueCollect + ' 0'),
                      Text(AllStrings.paidPayment + ' 0')
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              BodyList()
            ],
          ),
        ),
      ),
    );
  }
}


