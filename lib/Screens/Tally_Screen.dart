import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

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
            icon: const Icon(Icons.help_outline_sharp,color: Colors.black,),
            label: const Text(AllStrings.actionButtonLabel,style: TextStyle(color: Colors.black),),
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
          Container(
              color: AppColors.grayWhite,
              height: 55,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(AllStrings.qrText,
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: AppColors.secondaryColor,
                height: 80,
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "মোট পাবো",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "240",
                          style: TextStyle(
                              color: AppColors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.unfold_more),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "মোট দেবো",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "100",
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.primaryColor,
          icon: const Icon(Icons.person_add),
          onPressed: () {},
          label: const Text(AllStrings.fabText)),
    );
  }
}
