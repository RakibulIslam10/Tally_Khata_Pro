import 'package:flutter/material.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

fabButton(BuildContext context) {
  return FloatingActionButton.extended(
      backgroundColor: AppColors.primaryColor,
      icon: const Icon(Icons.person_add),
      onPressed: () {},
      label: const Text(AllStrings.fabText));
}