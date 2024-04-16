import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';
import 'package:talikhatapro/Widget/All_Due_And_Loan_Box.dart';
import 'package:talikhatapro/Widget/Fab_Button.dart';
import 'package:talikhatapro/Widget/Qr_Code_Box.dart';

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
              height: 20,
            ),
            allDueAndLoanBox()
          ],
        ),
        floatingActionButton: fabButton(context));
  }
}
