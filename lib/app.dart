import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:talikhatapro/Binding_Controller.dart';
import 'package:talikhatapro/Screens/Splash_Screen.dart';
import 'package:talikhatapro/Utils/App_Color.dart';
import 'package:talikhatapro/Utils/Const.dart';

class TallyKhataPro extends StatelessWidget {
  const TallyKhataPro({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AllStrings.appName,
      initialBinding: BindingController(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              foregroundColor: Colors.white),
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.primaryColor,),
          inputDecorationTheme:  InputDecorationTheme(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
          )),
    );
  }
}
