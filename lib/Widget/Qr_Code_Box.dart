import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

qrCodeBox() {
  return Container(
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
                Text(
                  AllStrings.qrText,
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
      ));
}



Container QrCodeActivationBox(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.08,
    width: double.infinity,
    color: AppColors.secondaryColor,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: InkWell(
        onTap: () {
          //'সুপার QR কোড একটিভ করুন' Business Logic
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: AppColors.deepOrange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Icon(Icons.category_outlined,
                          color: AppColors.backgroundColor,
                          size: 25),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: SizedBox(
                      child: Text(
                        'সুপার QR কোড একটিভ করুন',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded,
                color: AppColors.deepOrange),
          ],
        ),
      ),
    ),
  );
}
