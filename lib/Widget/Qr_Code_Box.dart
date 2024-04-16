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
