import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';
import 'package:talikhatapro/Widget/All_Due_And_Loan_Box.dart';
import 'package:talikhatapro/Widget/Fab_Button.dart';
import 'package:talikhatapro/Widget/Qr_Code_Box.dart';
import 'package:talikhatapro/Widget/Search_Bar.dart';
import 'package:talikhatapro/Widget/Three_Icons.dart';

class TallyScreen extends StatelessWidget {
  const TallyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: const Text(
            "ভাই ভাই স্টোর",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton.icon(
              onPressed: () {
                // Add your onPressed logic here
              },
              icon: const Icon(
                Icons.help_outline_sharp,
                color: Colors.black,
              ),
              label: const Text(
                AllStrings.actionButtonLabel,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_outlined,
              )),
        ),
        body: Column(
          children: [
            qrCodeBox(),
            const SizedBox(
              height: 15,
            ),
            allDueAndLoanBox(),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchBar(),
                  const SizedBox(width: 10),
                  threeIcons()
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "কাস্টমার ৫",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        " / ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "সাপ্লায়ার 0",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "পাবো",
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                      Text(" / "),
                      Text(
                        "দেবো ",
                        style: TextStyle(color: AppColors.green),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const ListTile(
                    trailing: Wrap(
                      children: [
                        Text(
                          "২৫০.০০",
                          style: TextStyle(
                              fontSize: 16, color: AppColors.primaryColor),
                        ),
                        SizedBox(width: 10),
                        Text(
                          ">",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundColor: AppColors.orange,
                      child: Text(
                        "R",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                    title: Text("রাকিব ভাই "),
                    subtitle: Text("২ দিন "),
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: fabButton(context));
  }
}
